.class Landroid/app/ActivityThread$ApplicationThread;
.super Landroid/app/IApplicationThread$Stub;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ApplicationThread"
.end annotation


# static fields
.field private static final DB_INFO_FORMAT:Ljava/lang/String; = "  %8s %8s %14s %14s  %s"


# instance fields
.field private mLastProcessState:I

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method private constructor <init>(Landroid/app/ActivityThread;)V
    .locals 0

    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    const/4 p1, -0x1

    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/ActivityThread$ApplicationThread;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method private dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 3

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    invoke-static {v1, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    return-void
.end method

.method private dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .locals 93

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v17, 0x400

    div-long v19, v1, v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v21, v1, v17

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v23, v1, v17

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v25, v1, v17

    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v27, v1, v17

    sub-long v29, v25, v27

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v31, 0x0

    aput-object v2, v1, v31

    const-class v2, Landroid/app/Activity;

    const/4 v14, 0x1

    aput-object v2, v1, v14

    const-class v2, Landroid/webkit/WebView;

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/4 v4, 0x3

    aput-object v2, v1, v4

    move-object v11, v1

    invoke-static {v11, v14}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v32

    aget-wide v9, v32, v31

    aget-wide v7, v32, v14

    aget-wide v5, v32, v3

    aget-wide v3, v32, v4

    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v1

    move-object/from16 v33, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v12

    move-wide/from16 v35, v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v14

    move/from16 v37, v13

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    move/from16 v38, v13

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v39

    move/from16 v42, v13

    move/from16 v41, v14

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    move-wide/from16 v43, v13

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    move-wide/from16 v45, v1

    const-wide v1, 0x10b00000001L

    invoke-virtual {v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    move-object/from16 v47, v11

    move/from16 v48, v12

    const-wide v11, 0x10500000001L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    nop

    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v14, "unknown"

    :goto_0
    const-wide v11, 0x10900000002L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    move-wide/from16 v49, v1

    move-wide/from16 v11, v45

    move-object v1, v15

    move-object/from16 v2, p2

    move-wide/from16 v51, v3

    move/from16 v3, p4

    move/from16 v4, p5

    move-wide/from16 v53, v5

    move-wide/from16 v5, v19

    move-wide/from16 v55, v7

    move-wide/from16 v7, v21

    move-wide/from16 v57, v9

    move-wide/from16 v9, v23

    move-wide/from16 v59, v11

    move-object/from16 v45, v47

    move/from16 v14, v48

    move-wide/from16 v11, v25

    move-object/from16 v69, v13

    move v0, v14

    move-wide/from16 v61, v35

    move/from16 v63, v37

    move/from16 v65, v38

    move/from16 v64, v41

    move/from16 v66, v42

    move-wide/from16 v67, v43

    const/16 v34, 0x1

    move-wide/from16 v13, v29

    move/from16 v70, v0

    move-object v0, v15

    move-wide/from16 v15, v27

    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    move-wide/from16 v1, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v3, 0x10b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    move-wide/from16 v5, v59

    const-wide v7, 0x10500000001L

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v9, 0x10500000002L

    move-wide/from16 v11, v61

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v13, 0x10500000003L

    move-wide/from16 v9, v57

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v13, 0x10500000004L

    move-wide/from16 v7, v55

    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v13, 0x10500000005L

    move/from16 v15, v70

    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000006L

    move-wide/from16 v71, v1

    move/from16 v1, v63

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000007L

    move/from16 v2, v64

    invoke-virtual {v0, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10500000008L

    move/from16 v73, v1

    move/from16 v1, v65

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v13, 0x10300000009L

    move/from16 v75, v1

    move/from16 v74, v2

    div-long v1, v39, v17

    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1050000000aL

    move-wide/from16 v13, v67

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1050000000bL

    move-wide/from16 v76, v5

    move/from16 v5, v66

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v1, 0x1050000000cL

    move/from16 v78, v5

    move-wide/from16 v5, v51

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v1, 0x1050000000dL

    move-wide/from16 v79, v5

    move-wide/from16 v5, v53

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    move-wide/from16 v81, v3

    move-object/from16 v3, v69

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v4, v4, 0x400

    move-wide/from16 v83, v5

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v5, v31

    :goto_1
    move-wide/from16 v85, v7

    if-ge v5, v4, :cond_1

    iget-object v8, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDebug$DbStats;

    const-wide v6, 0x20b00000004L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    move-object/from16 v87, v3

    move/from16 v88, v4

    const-wide v3, 0x10900000001L

    move-wide/from16 v89, v9

    iget-object v9, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide v9, 0x10500000002L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide v9, 0x10500000003L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    const-wide v9, 0x10900000005L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v7, v85

    move-object/from16 v3, v87

    move/from16 v4, v88

    move-wide/from16 v9, v89

    goto :goto_1

    :cond_1
    move-object/from16 v87, v3

    move/from16 v88, v4

    move-wide/from16 v89, v9

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-wide v4, 0x10900000004L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    if-eqz p6, :cond_6

    move v6, v15

    move-object/from16 v5, p0

    iget-object v7, v5, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v7, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v7, :cond_3

    move/from16 v7, v31

    goto :goto_2

    :cond_3
    iget-object v7, v5, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v7, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    :goto_2
    and-int/lit8 v8, v7, 0x2

    if-nez v8, :cond_5

    sget-boolean v8, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v8, :cond_4

    goto :goto_3

    :cond_4
    goto :goto_4

    :cond_5
    :goto_3
    move/from16 v31, v34

    :goto_4
    move/from16 v8, v31

    const/16 v9, 0x64

    invoke-static {v9, v8}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v9

    move-wide/from16 v91, v1

    const-wide v1, 0x10900000005L

    invoke-virtual {v0, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_5

    :cond_6
    move-wide/from16 v91, v1

    move v6, v15

    move-object/from16 v5, p0

    :goto_5
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    .locals 91

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v21, 0x400

    div-long v23, v1, v21

    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v25, v1, v21

    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v27, v1, v21

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v29, v1, v21

    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v31, v1, v21

    sub-long v33, v29, v31

    const/4 v14, 0x4

    new-array v1, v14, [Ljava/lang/Class;

    const-class v2, Landroid/app/ContextImpl;

    const/16 v35, 0x0

    aput-object v2, v1, v35

    const-class v2, Landroid/app/Activity;

    const/4 v11, 0x1

    aput-object v2, v1, v11

    const-class v2, Landroid/webkit/WebView;

    const/4 v12, 0x2

    aput-object v2, v1, v12

    const-class v2, Lcom/android/org/conscrypt/OpenSSLSocketImpl;

    const/16 v36, 0x3

    aput-object v2, v1, v36

    move-object v9, v1

    invoke-static {v9, v11}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v37

    aget-wide v7, v37, v35

    aget-wide v5, v37, v11

    aget-wide v3, v37, v12

    aget-wide v1, v37, v36

    move-object/from16 v38, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v13

    move-wide/from16 v39, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v10

    move-wide/from16 v41, v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v14

    move/from16 v43, v13

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    move/from16 v44, v13

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v45

    move/from16 v48, v13

    move/from16 v47, v14

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    move-wide/from16 v49, v13

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    nop

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v11, :cond_0

    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v11, v11, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v11, "unknown"

    :goto_0
    move-wide/from16 v52, v1

    move-object v1, v15

    move-object/from16 v2, p2

    move-wide/from16 v54, v3

    move/from16 v3, p3

    move/from16 v4, p4

    move-wide/from16 v56, v5

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v58, v7

    move v7, v14

    move-object v8, v11

    move-object/from16 v60, v9

    move v14, v10

    move-wide/from16 v9, v23

    move v0, v12

    const/16 v51, 0x1

    move-wide/from16 v11, v25

    move-object/from16 v71, v13

    move v0, v14

    move-wide/from16 v61, v39

    move-wide/from16 v63, v41

    move/from16 v65, v43

    move/from16 v67, v44

    move/from16 v66, v47

    move/from16 v68, v48

    move-wide/from16 v69, v49

    move-wide/from16 v13, v27

    move/from16 v72, v0

    move-object v0, v15

    move-wide/from16 v15, v29

    move-wide/from16 v17, v33

    move-wide/from16 v19, v31

    invoke-static/range {v1 .. v20}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    if-eqz p3, :cond_2

    move-wide/from16 v2, v61

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-wide/from16 v5, v63

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-wide/from16 v7, v58

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-wide/from16 v9, v56

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v11, v72

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v12, v65

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v13, v66

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v14, v67

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v15, v68

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v73, v14

    move/from16 v74, v15

    move-wide/from16 v14, v52

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    move-object/from16 v4, v71

    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    nop

    :goto_1
    move/from16 v1, v35

    move-wide/from16 v75, v14

    iget-object v14, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v1, v14, :cond_1

    iget-object v14, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/sqlite/SQLiteDebug$DbStats;

    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v15, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v77, v12

    move/from16 v78, v13

    iget-wide v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    add-int/lit8 v35, v1, 0x1

    move-wide/from16 v14, v75

    move/from16 v12, v77

    move/from16 v13, v78

    goto :goto_1

    :cond_1
    move/from16 v77, v12

    move/from16 v78, v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    return-void

    :cond_2
    move-wide/from16 v75, v52

    move-wide/from16 v9, v56

    move-wide/from16 v7, v58

    move-wide/from16 v2, v61

    move-wide/from16 v5, v63

    move/from16 v77, v65

    move/from16 v78, v66

    move/from16 v73, v67

    move/from16 v74, v68

    move-object/from16 v4, v71

    move/from16 v11, v72

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " Objects"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "%21s %8d %21s %8d"

    const/4 v12, 0x4

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "Views:"

    aput-object v14, v13, v35

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v51

    const-string v14, "ViewRootImpl:"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v36

    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d %21s %8d"

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "AppContexts:"

    aput-object v14, v13, v35

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v51

    const-string v14, "Activities:"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v36

    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d %21s %8d"

    new-array v13, v12, [Ljava/lang/Object;

    const-string v14, "Assets:"

    aput-object v14, v13, v35

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v51

    const-string v14, "AssetManagers:"

    const/4 v15, 0x2

    aput-object v14, v13, v15

    move/from16 v14, v77

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v36

    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d %21s %8d"

    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "Local Binders:"

    aput-object v15, v13, v35

    move/from16 v15, v78

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v51

    const-string v16, "Proxy Binders:"

    const/16 v17, 0x2

    aput-object v16, v13, v17

    move/from16 v12, v73

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v13, v36

    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d %21s %8d"

    move-wide/from16 v79, v2

    const/4 v13, 0x4

    new-array v2, v13, [Ljava/lang/Object;

    const-string v3, "Parcel memory:"

    aput-object v3, v2, v35

    move-wide/from16 v81, v5

    div-long v5, v45, v21

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v51

    const-string v3, "Parcel count:"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    move-wide/from16 v5, v69

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v36

    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d %21s %8d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Death Recipients:"

    aput-object v2, v3, v35

    move/from16 v2, v74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v3, v51

    const-string v13, "OpenSSL Sockets:"

    move/from16 v83, v2

    const/4 v2, 0x2

    aput-object v13, v3, v2

    move-wide/from16 v84, v5

    move-wide/from16 v5, v75

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v3, v36

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d"

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "WebViews:"

    aput-object v2, v3, v35

    move-wide/from16 v86, v5

    move-wide/from16 v5, v54

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v3, v51

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " SQL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "%21s %8d"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "MEMORY_USED:"

    aput-object v2, v3, v35

    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v51

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "%21s %8d %21s %8d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "PAGECACHE_OVERFLOW:"

    aput-object v2, v3, v35

    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v51

    const-string v2, "MALLOC_SIZE:"

    const/4 v13, 0x2

    aput-object v2, v3, v13

    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v2, v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v36

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_6

    const-string v2, " DATABASES"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  %8s %8s %14s %14s  %s"

    const/4 v3, 0x5

    new-array v13, v3, [Ljava/lang/Object;

    const-string/jumbo v16, "pgsz"

    aput-object v16, v13, v35

    const-string v16, "dbsz"

    aput-object v16, v13, v51

    const-string v16, "Lookaside(b)"

    const/16 v17, 0x2

    aput-object v16, v13, v17

    const-string v16, "cache"

    aput-object v16, v13, v36

    const-string v16, "Dbname"

    const/16 v17, 0x4

    aput-object v16, v13, v17

    invoke-static {v0, v2, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v2, v35

    :goto_2
    if-ge v2, v1, :cond_6

    iget-object v13, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/database/sqlite/SQLiteDebug$DbStats;

    move/from16 v88, v1

    const-string v1, "  %8s %8s %14s %14s  %s"

    move-object/from16 v89, v4

    new-array v4, v3, [Ljava/lang/Object;

    move-object/from16 v90, v4

    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide/16 v16, 0x0

    cmp-long v3, v3, v16

    if-lez v3, :cond_3

    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v3, " "

    :goto_3
    aput-object v3, v90, v35

    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    cmp-long v3, v3, v16

    if-lez v3, :cond_4

    iget-wide v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    goto :goto_4

    :cond_4
    const-string v3, " "

    :goto_4
    aput-object v3, v90, v51

    iget v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    if-lez v3, :cond_5

    iget v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_5
    const-string v3, " "

    :goto_5
    const/4 v4, 0x2

    aput-object v3, v90, v4

    iget-object v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    aput-object v3, v90, v36

    iget-object v3, v13, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    const/16 v16, 0x4

    aput-object v3, v90, v16

    move-object/from16 v3, v90

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v88

    move-object/from16 v4, v89

    const/4 v3, 0x5

    goto :goto_2

    :cond_6
    move/from16 v88, v1

    move-object/from16 v89, v4

    const/4 v4, 0x2

    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, " Asset Allocations"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    if-eqz p7, :cond_b

    move-object/from16 v3, p0

    iget-object v13, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v13, v13, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v13, :cond_8

    iget-object v13, v3, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v13, v13, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v13, v13, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v4, v13

    if-nez v4, :cond_9

    :cond_8
    sget-boolean v4, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v4, :cond_a

    :cond_9
    move/from16 v35, v51

    nop

    :cond_a
    move/from16 v4, v35

    const-string v13, " "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v13, " Unreachable memory"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/16 v13, 0x64

    invoke-static {v13, v4}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    move-object/from16 v3, p0

    :goto_6
    return-void
.end method

.method static synthetic lambda$scheduleTrimMemory$0(Ljava/lang/Object;I)V
    .locals 1

    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;I)V

    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$100(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public attachAgent(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;",
            "Landroid/content/ComponentName;",
            "Landroid/app/ProfilerInfo;",
            "Landroid/os/Bundle;",
            "Landroid/app/IInstrumentationWatcher;",
            "Landroid/app/IUiAutomationConnection;",
            "IZZZZ",
            "Landroid/content/res/Configuration;",
            "Landroid/content/res/CompatibilityInfo;",
            "Ljava/util/Map;",
            "Landroid/os/Bundle;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    move-object/from16 v0, p0

    if-eqz p16, :cond_0

    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    :cond_0
    move-object/from16 v2, p17

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    new-instance v3, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v3}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    move-object/from16 v4, p1

    iput-object v4, v3, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    move-object/from16 v5, p2

    iput-object v5, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v6, p3

    iput-object v6, v3, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    move-object/from16 v7, p4

    iput-object v7, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    move-object/from16 v8, p6

    iput-object v8, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    move-object/from16 v9, p7

    iput-object v9, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    move-object/from16 v10, p8

    iput-object v10, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    move/from16 v11, p9

    iput v11, v3, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    move/from16 v12, p10

    iput-boolean v12, v3, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    move/from16 v13, p11

    iput-boolean v13, v3, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    move/from16 v14, p12

    iput-boolean v14, v3, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    move/from16 v15, p13

    iput-boolean v15, v3, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    move-object/from16 v1, p14

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    move-object/from16 v1, p15

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v1, p5

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    move-object/from16 v1, p18

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    move/from16 v1, p19

    iput-boolean v1, v3, Landroid/app/ActivityThread$AppBindData;->autofillCompatibilityEnabled:Z

    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public clearDnsCache()V
    .locals 1

    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void
.end method

.method public dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x88

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    nop

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not dup FD "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void

    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :goto_1
    return-void
.end method

.method public dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-void
.end method

.method public dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 7

    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    iput-boolean p1, v0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    iput-boolean p2, v0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    iput-boolean p3, v0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    iput-object p4, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    iput-object p5, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x87

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    return-void
.end method

.method public dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    .locals 11

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v10, v0

    move-object v2, p0

    move-object v3, v10

    move-object v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    :try_start_0
    invoke-direct/range {v2 .. v9}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v0

    throw v2
.end method

.method public dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 9

    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    move-object v2, p0

    move-object v3, v1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    :try_start_0
    invoke-direct/range {v2 .. v8}, Landroid/app/ActivityThread$ApplicationThread;->dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v0

    throw v2
.end method

.method public dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8d

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7

    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7b

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void

    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public handleTrustStorageUpdate()V
    .locals 1

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    return-void
.end method

.method public notifyCleartextNetwork([B)V
    .locals 1

    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    return-void
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    invoke-static {}, Landroid/app/ActivityThread;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scheduleBindService token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " intent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public schedulePreload(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Ljava/util/Map;)V
    .locals 5

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-static {p4}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->setMyself()V

    :cond_0
    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->getInstance()Lcom/oneplus/embryo/EmbryoApp;

    move-result-object v0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->access$100(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v1

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v2

    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v4, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v4}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    iput-object v4, v3, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iput-object p1, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v2}, Lcom/oneplus/embryo/EmbryoApp;->attach(Landroid/content/Context;)V

    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0}, Lcom/oneplus/embryo/EmbryoApp;->getRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 12

    move-object v0, p0

    const/4 v1, 0x0

    move/from16 v2, p9

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    iget-object v3, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    invoke-virtual {v3}, Landroid/app/ActivityThread$ApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v10

    const/4 v9, 0x0

    move-object v3, v1

    move-object v4, p1

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    move/from16 v11, p8

    invoke-direct/range {v3 .. v11}, Landroid/app/ActivityThread$ReceiverData;-><init>(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZLandroid/os/IBinder;I)V

    move-object v3, p2

    iput-object v3, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    move-object v4, p3

    iput-object v4, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    iget-object v5, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v6, 0x71

    invoke-virtual {v5, v6, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ServiceStartArgs;

    new-instance v3, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v3}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    iput-object p1, v3, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    iget-boolean v4, v2, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    iget v4, v2, Landroid/app/ServiceStartArgs;->startId:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    iget v4, v2, Landroid/app/ServiceStartArgs;->flags:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    iget-object v4, v2, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x73

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x89

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 4

    sget-object v0, Landroid/app/-$$Lambda$ActivityThread$ApplicationThread$tUGFX7CUhzB4Pg5wFd5yeqOnu38;->INSTANCE:Landroid/app/-$$Lambda$ActivityThread$ApplicationThread$tUGFX7CUhzB4Pg5wFd5yeqOnu38;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    goto :goto_1

    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method public setNetworkBlockSeq(J)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->access$902(Landroid/app/ActivityThread;J)J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProcessState(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public startBinderTracking()V
    .locals 3

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x97

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_0
    move-exception v0

    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    return-void
.end method

.method public switchActivityThreadLog(Z)V
    .locals 3

    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# switchActivityThreadLog # on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->updateActivityThreadLog(Z)V

    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3

    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-gt p1, v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateTimePrefs(I)V
    .locals 1

    if-nez p1, :cond_0

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    return-void
.end method
