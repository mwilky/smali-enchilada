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

    .line 787
    iput-object p1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-direct {p0}, Landroid/app/IApplicationThread$Stub;-><init>()V

    .line 790
    const/4 p1, -0x1

    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/app/ActivityThread;Landroid/app/ActivityThread$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/app/ActivityThread;
    .param p2, "x1"    # Landroid/app/ActivityThread$1;

    .line 787
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;-><init>(Landroid/app/ActivityThread;)V

    return-void
.end method

.method static synthetic access$1200(Landroid/app/ActivityThread$ApplicationThread;Landroid/content/res/Configuration;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread$ApplicationThread;
    .param p1, "x1"    # Landroid/content/res/Configuration;

    .line 787
    invoke-direct {p0, p1}, Landroid/app/ActivityThread$ApplicationThread;->updatePendingConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static synthetic access$700(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Landroid/app/ActivityThread$ApplicationThread;
    .param p1, "x1"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "x2"    # [Ljava/lang/String;

    .line 787
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    return-void
.end method

.method private dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1385
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    new-instance v1, Ljava/io/FileOutputStream;

    .line 1386
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 1387
    .local v0, "pw":Ljava/io/PrintWriter;
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, v0}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 1388
    .local v1, "printer":Landroid/util/PrintWriterPrinter;
    invoke-static {v1, p2}, Landroid/database/sqlite/SQLiteDebug;->dump(Landroid/util/Printer;[Ljava/lang/String;)V

    .line 1389
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 1390
    return-void
.end method

.method private dumpMemInfo(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZZZ)V
    .locals 93
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1268
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v17, 0x400

    div-long v19, v1, v17

    .line 1269
    .local v19, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v21, v1, v17

    .line 1270
    .local v21, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v23, v1, v17

    .line 1272
    .local v23, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    .line 1273
    .local v13, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    .line 1274
    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v25, v1, v17

    .line 1275
    .local v25, "dalvikMax":J
    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v27, v1, v17

    .line 1276
    .local v27, "dalvikFree":J
    sub-long v29, v25, v27

    .line 1278
    .local v29, "dalvikAllocated":J
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

    .line 1284
    .local v11, "classesToCount":[Ljava/lang/Class;
    invoke-static {v11, v14}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v32

    .line 1285
    .local v32, "instanceCounts":[J
    aget-wide v9, v32, v31

    .line 1286
    .local v9, "appContextInstanceCount":J
    aget-wide v7, v32, v14

    .line 1287
    .local v7, "activityInstanceCount":J
    aget-wide v5, v32, v3

    .line 1288
    .local v5, "webviewInstanceCount":J
    aget-wide v3, v32, v4

    .line 1290
    .local v3, "openSslSocketCount":J
    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v1

    .line 1291
    .local v1, "viewInstanceCount":J
    move-object/from16 v33, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v13

    .line 1292
    .local v13, "viewRootInstanceCount":J
    .local v33, "runtime":Ljava/lang/Runtime;
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v12

    .line 1293
    .local v12, "globalAssetCount":I
    move-wide/from16 v35, v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    .line 1294
    .local v13, "globalAssetManagerCount":I
    .local v35, "viewRootInstanceCount":J
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v14

    .line 1295
    .local v14, "binderLocalObjectCount":I
    move/from16 v37, v13

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    .line 1296
    .local v13, "binderProxyObjectCount":I
    .local v37, "globalAssetManagerCount":I
    move/from16 v38, v13

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    .line 1297
    .local v13, "binderDeathObjectCount":I
    .local v38, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v39

    .line 1298
    .local v39, "parcelSize":J
    move/from16 v42, v13

    move/from16 v41, v14

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    .line 1299
    .end local v14    # "binderLocalObjectCount":I
    .local v13, "parcelCount":J
    .local v41, "binderLocalObjectCount":I
    .local v42, "binderDeathObjectCount":I
    move-wide/from16 v43, v13

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    .line 1301
    .local v13, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v43, "parcelCount":J
    move-wide/from16 v45, v1

    const-wide v1, 0x10b00000001L

    .line 1301
    .end local v1    # "viewInstanceCount":J
    .local v45, "viewInstanceCount":J
    invoke-virtual {v15, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1302
    .local v1, "mToken":J
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    move-object/from16 v47, v11

    move/from16 v48, v12

    const-wide v11, 0x10500000001L

    .line 1302
    .end local v11    # "classesToCount":[Ljava/lang/Class;
    .end local v12    # "globalAssetCount":I
    .local v47, "classesToCount":[Ljava/lang/Class;
    .local v48, "globalAssetCount":I
    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1303
    nop

    .line 1304
    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v14, :cond_0

    iget-object v14, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v14, v14, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v14, v14, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v14, "unknown"

    .line 1303
    :goto_0
    const-wide v11, 0x10900000002L

    invoke-virtual {v15, v11, v12, v14}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1305
    move-wide/from16 v49, v1

    move-wide/from16 v11, v45

    move-object v1, v15

    .line 1305
    .end local v1    # "mToken":J
    .end local v45    # "viewInstanceCount":J
    .local v11, "viewInstanceCount":J
    .local v49, "mToken":J
    move-object/from16 v2, p2

    move-wide/from16 v51, v3

    move/from16 v3, p4

    .line 1305
    .end local v3    # "openSslSocketCount":J
    .local v51, "openSslSocketCount":J
    move/from16 v4, p5

    move-wide/from16 v53, v5

    move-wide/from16 v5, v19

    .line 1305
    .end local v5    # "webviewInstanceCount":J
    .local v53, "webviewInstanceCount":J
    move-wide/from16 v55, v7

    move-wide/from16 v7, v21

    .line 1305
    .end local v7    # "activityInstanceCount":J
    .local v55, "activityInstanceCount":J
    move-wide/from16 v57, v9

    move-wide/from16 v9, v23

    .line 1305
    .end local v9    # "appContextInstanceCount":J
    .local v57, "appContextInstanceCount":J
    move-wide/from16 v59, v11

    move-object/from16 v45, v47

    move/from16 v14, v48

    move-wide/from16 v11, v25

    .line 1305
    .end local v11    # "viewInstanceCount":J
    .end local v47    # "classesToCount":[Ljava/lang/Class;
    .end local v48    # "globalAssetCount":I
    .local v14, "globalAssetCount":I
    .local v45, "classesToCount":[Ljava/lang/Class;
    .local v59, "viewInstanceCount":J
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

    .end local v13    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v14    # "globalAssetCount":I
    .end local v35    # "viewRootInstanceCount":J
    .end local v37    # "globalAssetManagerCount":I
    .end local v38    # "binderProxyObjectCount":I
    .end local v41    # "binderLocalObjectCount":I
    .end local v42    # "binderDeathObjectCount":I
    .end local v43    # "parcelCount":J
    .local v0, "globalAssetCount":I
    .local v61, "viewRootInstanceCount":J
    .local v63, "globalAssetManagerCount":I
    .local v64, "binderLocalObjectCount":I
    .local v65, "binderProxyObjectCount":I
    .local v66, "binderDeathObjectCount":I
    .local v67, "parcelCount":J
    .local v69, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move/from16 v70, v0

    move-object v0, v15

    move-wide/from16 v15, v27

    .line 1305
    .end local v0    # "globalAssetCount":I
    .local v70, "globalAssetCount":I
    invoke-static/range {v1 .. v16}, Landroid/app/ActivityThread;->dumpMemInfoTable(Landroid/util/proto/ProtoOutputStream;Landroid/os/Debug$MemoryInfo;ZZJJJJJJ)V

    .line 1308
    move-wide/from16 v1, v49

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1310
    .end local v49    # "mToken":J
    .restart local v1    # "mToken":J
    const-wide v3, 0x10b00000002L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1311
    .local v3, "oToken":J
    move-wide/from16 v5, v59

    const-wide v7, 0x10500000001L

    invoke-virtual {v0, v7, v8, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1313
    .end local v59    # "viewInstanceCount":J
    .local v5, "viewInstanceCount":J
    const-wide v9, 0x10500000002L

    move-wide/from16 v11, v61

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1315
    .end local v61    # "viewRootInstanceCount":J
    .local v11, "viewRootInstanceCount":J
    const-wide v13, 0x10500000003L

    move-wide/from16 v9, v57

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1317
    .end local v57    # "appContextInstanceCount":J
    .restart local v9    # "appContextInstanceCount":J
    const-wide v13, 0x10500000004L

    move-wide/from16 v7, v55

    invoke-virtual {v0, v13, v14, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1319
    .end local v55    # "activityInstanceCount":J
    .restart local v7    # "activityInstanceCount":J
    const-wide v13, 0x10500000005L

    move/from16 v15, v70

    invoke-virtual {v0, v13, v14, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1321
    .end local v70    # "globalAssetCount":I
    .local v15, "globalAssetCount":I
    const-wide v13, 0x10500000006L

    move-wide/from16 v71, v1

    move/from16 v1, v63

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1323
    .end local v63    # "globalAssetManagerCount":I
    .local v1, "globalAssetManagerCount":I
    .local v71, "mToken":J
    const-wide v13, 0x10500000007L

    move/from16 v2, v64

    invoke-virtual {v0, v13, v14, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1325
    .end local v64    # "binderLocalObjectCount":I
    .local v2, "binderLocalObjectCount":I
    const-wide v13, 0x10500000008L

    move/from16 v73, v1

    move/from16 v1, v65

    invoke-virtual {v0, v13, v14, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1327
    .end local v65    # "binderProxyObjectCount":I
    .local v1, "binderProxyObjectCount":I
    .local v73, "globalAssetManagerCount":I
    const-wide v13, 0x10300000009L

    move/from16 v75, v1

    move/from16 v74, v2

    div-long v1, v39, v17

    .line 1327
    .end local v1    # "binderProxyObjectCount":I
    .end local v2    # "binderLocalObjectCount":I
    .local v74, "binderLocalObjectCount":I
    .local v75, "binderProxyObjectCount":I
    invoke-virtual {v0, v13, v14, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1329
    const-wide v1, 0x1050000000aL

    move-wide/from16 v13, v67

    invoke-virtual {v0, v1, v2, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1330
    .end local v67    # "parcelCount":J
    .local v13, "parcelCount":J
    const-wide v1, 0x1050000000bL

    move-wide/from16 v76, v5

    move/from16 v5, v66

    invoke-virtual {v0, v1, v2, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1332
    .end local v66    # "binderDeathObjectCount":I
    .local v5, "binderDeathObjectCount":I
    .local v76, "viewInstanceCount":J
    const-wide v1, 0x1050000000cL

    move/from16 v78, v5

    move-wide/from16 v5, v51

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1334
    .end local v51    # "openSslSocketCount":J
    .local v5, "openSslSocketCount":J
    .local v78, "binderDeathObjectCount":I
    const-wide v1, 0x1050000000dL

    move-wide/from16 v79, v5

    move-wide/from16 v5, v53

    invoke-virtual {v0, v1, v2, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1336
    .end local v53    # "webviewInstanceCount":J
    .local v5, "webviewInstanceCount":J
    .local v79, "openSslSocketCount":J
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1339
    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 1340
    .local v1, "sToken":J
    move-wide/from16 v81, v3

    move-object/from16 v3, v69

    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    .line 1340
    .end local v69    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v3, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v81, "oToken":J
    div-int/lit16 v4, v4, 0x400

    move-wide/from16 v83, v5

    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1342
    .end local v5    # "webviewInstanceCount":J
    .local v83, "webviewInstanceCount":J
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1344
    iget v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v4, v4, 0x400

    const-wide v5, 0x10500000003L

    invoke-virtual {v0, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1346
    iget-object v4, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 1347
    .local v4, "n":I
    move/from16 v5, v31

    .line 1347
    .local v5, "i":I
    :goto_1
    move-wide/from16 v85, v7

    .line 1347
    .end local v7    # "activityInstanceCount":J
    .local v85, "activityInstanceCount":J
    if-ge v5, v4, :cond_1

    .line 1348
    iget-object v8, v3, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1350
    .local v8, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const-wide v6, 0x20b00000004L

    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v6

    .line 1351
    .local v6, "dToken":J
    move-object/from16 v87, v3

    move/from16 v88, v4

    const-wide v3, 0x10900000001L

    .line 1351
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .local v87, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v88, "n":I
    move-wide/from16 v89, v9

    iget-object v9, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    .line 1351
    .end local v9    # "appContextInstanceCount":J
    .local v89, "appContextInstanceCount":J
    invoke-virtual {v0, v3, v4, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1352
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    const-wide v9, 0x10500000002L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1353
    iget-wide v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    const-wide v9, 0x10500000003L

    invoke-virtual {v0, v9, v10, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 1354
    iget v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    const-wide v9, 0x10500000004L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1356
    iget-object v3, v8, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    const-wide v9, 0x10900000005L

    invoke-virtual {v0, v9, v10, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1357
    invoke-virtual {v0, v6, v7}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1347
    .end local v6    # "dToken":J
    .end local v8    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v5, v5, 0x1

    move-wide/from16 v7, v85

    move-object/from16 v3, v87

    move/from16 v4, v88

    move-wide/from16 v9, v89

    goto :goto_1

    .line 1359
    .end local v5    # "i":I
    .end local v87    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v88    # "n":I
    .end local v89    # "appContextInstanceCount":J
    .restart local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v4    # "n":I
    .restart local v9    # "appContextInstanceCount":J
    :cond_1
    move-object/from16 v87, v3

    move/from16 v88, v4

    move-wide/from16 v89, v9

    .line 1359
    .end local v3    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v4    # "n":I
    .end local v9    # "appContextInstanceCount":J
    .restart local v87    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v88    # "n":I
    .restart local v89    # "appContextInstanceCount":J
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1362
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v3

    .line 1363
    .local v3, "assetAlloc":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1364
    const-wide v4, 0x10900000004L

    invoke-virtual {v0, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1368
    :cond_2
    if-eqz p6, :cond_6

    .line 1369
    move v6, v15

    move-object/from16 v5, p0

    iget-object v7, v5, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1369
    .end local v15    # "globalAssetCount":I
    .local v6, "globalAssetCount":I
    iget-object v7, v7, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-nez v7, :cond_3

    move/from16 v7, v31

    goto :goto_2

    :cond_3
    iget-object v7, v5, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v7, v7, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v7, v7, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 1370
    .local v7, "flags":I
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

    .line 1372
    .local v8, "showContents":Z
    const/16 v9, 0x64

    .line 1373
    invoke-static {v9, v8}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v9

    .line 1372
    move-wide/from16 v91, v1

    const-wide v1, 0x10900000005L

    invoke-virtual {v0, v1, v2, v9}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1372
    .end local v1    # "sToken":J
    .end local v7    # "flags":I
    .end local v8    # "showContents":Z
    .local v91, "sToken":J
    goto :goto_5

    .line 1375
    .end local v6    # "globalAssetCount":I
    .end local v91    # "sToken":J
    .restart local v1    # "sToken":J
    .restart local v15    # "globalAssetCount":I
    :cond_6
    move-wide/from16 v91, v1

    move v6, v15

    move-object/from16 v5, p0

    .line 1375
    .end local v1    # "sToken":J
    .end local v15    # "globalAssetCount":I
    .restart local v6    # "globalAssetCount":I
    .restart local v91    # "sToken":J
    :goto_5
    return-void
.end method

.method private dumpMemInfo(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZZ)V
    .locals 91
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "memInfo"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    .line 1116
    invoke-static {}, Landroid/os/Debug;->getNativeHeapSize()J

    move-result-wide v1

    const-wide/16 v21, 0x400

    div-long v23, v1, v21

    .line 1117
    .local v23, "nativeMax":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapAllocatedSize()J

    move-result-wide v1

    div-long v25, v1, v21

    .line 1118
    .local v25, "nativeAllocated":J
    invoke-static {}, Landroid/os/Debug;->getNativeHeapFreeSize()J

    move-result-wide v1

    div-long v27, v1, v21

    .line 1120
    .local v27, "nativeFree":J
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v13

    .line 1121
    .local v13, "runtime":Ljava/lang/Runtime;
    invoke-virtual {v13}, Ljava/lang/Runtime;->gc()V

    .line 1122
    invoke-virtual {v13}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v1

    div-long v29, v1, v21

    .line 1123
    .local v29, "dalvikMax":J
    invoke-virtual {v13}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v1

    div-long v31, v1, v21

    .line 1124
    .local v31, "dalvikFree":J
    sub-long v33, v29, v31

    .line 1126
    .local v33, "dalvikAllocated":J
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

    .line 1132
    .local v9, "classesToCount":[Ljava/lang/Class;
    invoke-static {v9, v11}, Ldalvik/system/VMDebug;->countInstancesOfClasses([Ljava/lang/Class;Z)[J

    move-result-object v37

    .line 1133
    .local v37, "instanceCounts":[J
    aget-wide v7, v37, v35

    .line 1134
    .local v7, "appContextInstanceCount":J
    aget-wide v5, v37, v11

    .line 1135
    .local v5, "activityInstanceCount":J
    aget-wide v3, v37, v12

    .line 1136
    .local v3, "webviewInstanceCount":J
    aget-wide v1, v37, v36

    .line 1138
    .local v1, "openSslSocketCount":J
    move-object/from16 v38, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewInstanceCount()J

    move-result-wide v13

    .line 1139
    .local v13, "viewInstanceCount":J
    .local v38, "runtime":Ljava/lang/Runtime;
    move-wide/from16 v39, v13

    invoke-static {}, Landroid/view/ViewDebug;->getViewRootImplCount()J

    move-result-wide v13

    .line 1140
    .local v13, "viewRootInstanceCount":J
    .local v39, "viewInstanceCount":J
    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetCount()I

    move-result v10

    .line 1141
    .local v10, "globalAssetCount":I
    move-wide/from16 v41, v13

    invoke-static {}, Landroid/content/res/AssetManager;->getGlobalAssetManagerCount()I

    move-result v13

    .line 1142
    .local v13, "globalAssetManagerCount":I
    .local v41, "viewRootInstanceCount":J
    invoke-static {}, Landroid/os/Debug;->getBinderLocalObjectCount()I

    move-result v14

    .line 1143
    .local v14, "binderLocalObjectCount":I
    move/from16 v43, v13

    invoke-static {}, Landroid/os/Debug;->getBinderProxyObjectCount()I

    move-result v13

    .line 1144
    .local v13, "binderProxyObjectCount":I
    .local v43, "globalAssetManagerCount":I
    move/from16 v44, v13

    invoke-static {}, Landroid/os/Debug;->getBinderDeathObjectCount()I

    move-result v13

    .line 1145
    .local v13, "binderDeathObjectCount":I
    .local v44, "binderProxyObjectCount":I
    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocSize()J

    move-result-wide v45

    .line 1146
    .local v45, "parcelSize":J
    move/from16 v48, v13

    move/from16 v47, v14

    invoke-static {}, Landroid/os/Parcel;->getGlobalAllocCount()J

    move-result-wide v13

    .line 1147
    .end local v14    # "binderLocalObjectCount":I
    .local v13, "parcelCount":J
    .local v47, "binderLocalObjectCount":I
    .local v48, "binderDeathObjectCount":I
    move-wide/from16 v49, v13

    invoke-static {}, Landroid/database/sqlite/SQLiteDebug;->getDatabaseInfo()Landroid/database/sqlite/SQLiteDebug$PagerStats;

    move-result-object v13

    .line 1149
    .local v13, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v49, "parcelCount":J
    nop

    .line 1150
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v14

    .line 1151
    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    if-eqz v11, :cond_0

    iget-object v11, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v11, v11, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iget-object v11, v11, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string/jumbo v11, "unknown"

    .line 1149
    :goto_0
    move-wide/from16 v52, v1

    move-object v1, v15

    .line 1149
    .end local v1    # "openSslSocketCount":J
    .local v52, "openSslSocketCount":J
    move-object/from16 v2, p2

    move-wide/from16 v54, v3

    move/from16 v3, p3

    .line 1149
    .end local v3    # "webviewInstanceCount":J
    .local v54, "webviewInstanceCount":J
    move/from16 v4, p4

    move-wide/from16 v56, v5

    move/from16 v5, p5

    .line 1149
    .end local v5    # "activityInstanceCount":J
    .local v56, "activityInstanceCount":J
    move/from16 v6, p6

    move-wide/from16 v58, v7

    move v7, v14

    .line 1149
    .end local v7    # "appContextInstanceCount":J
    .local v58, "appContextInstanceCount":J
    move-object v8, v11

    move-object/from16 v60, v9

    move v14, v10

    move-wide/from16 v9, v23

    .line 1149
    .end local v9    # "classesToCount":[Ljava/lang/Class;
    .end local v10    # "globalAssetCount":I
    .local v14, "globalAssetCount":I
    .local v60, "classesToCount":[Ljava/lang/Class;
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

    .end local v13    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v14    # "globalAssetCount":I
    .end local v39    # "viewInstanceCount":J
    .end local v41    # "viewRootInstanceCount":J
    .end local v43    # "globalAssetManagerCount":I
    .end local v44    # "binderProxyObjectCount":I
    .end local v47    # "binderLocalObjectCount":I
    .end local v48    # "binderDeathObjectCount":I
    .end local v49    # "parcelCount":J
    .local v0, "globalAssetCount":I
    .local v61, "viewInstanceCount":J
    .local v63, "viewRootInstanceCount":J
    .local v65, "globalAssetManagerCount":I
    .local v66, "binderLocalObjectCount":I
    .local v67, "binderProxyObjectCount":I
    .local v68, "binderDeathObjectCount":I
    .local v69, "parcelCount":J
    .local v71, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    move/from16 v72, v0

    move-object v0, v15

    move-wide/from16 v15, v29

    .line 1149
    .end local v0    # "globalAssetCount":I
    .local v72, "globalAssetCount":I
    move-wide/from16 v17, v33

    move-wide/from16 v19, v31

    invoke-static/range {v1 .. v20}, Landroid/app/ActivityThread;->dumpMemInfoTable(Ljava/io/PrintWriter;Landroid/os/Debug$MemoryInfo;ZZZZILjava/lang/String;JJJJJJ)V

    .line 1155
    if-eqz p3, :cond_2

    .line 1160
    move-wide/from16 v2, v61

    invoke-virtual {v0, v2, v3}, Ljava/io/PrintWriter;->print(J)V

    .line 1160
    .end local v61    # "viewInstanceCount":J
    .local v2, "viewInstanceCount":J
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1161
    move-wide/from16 v5, v63

    invoke-virtual {v0, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 1161
    .end local v63    # "viewRootInstanceCount":J
    .local v5, "viewRootInstanceCount":J
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1162
    move-wide/from16 v7, v58

    invoke-virtual {v0, v7, v8}, Ljava/io/PrintWriter;->print(J)V

    .line 1162
    .end local v58    # "appContextInstanceCount":J
    .restart local v7    # "appContextInstanceCount":J
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1163
    move-wide/from16 v9, v56

    invoke-virtual {v0, v9, v10}, Ljava/io/PrintWriter;->print(J)V

    .line 1163
    .end local v56    # "activityInstanceCount":J
    .local v9, "activityInstanceCount":J
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1165
    move/from16 v11, v72

    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(I)V

    .line 1165
    .end local v72    # "globalAssetCount":I
    .local v11, "globalAssetCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1166
    move/from16 v12, v65

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1166
    .end local v65    # "globalAssetManagerCount":I
    .local v12, "globalAssetManagerCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1167
    move/from16 v13, v66

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(I)V

    .line 1167
    .end local v66    # "binderLocalObjectCount":I
    .local v13, "binderLocalObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1168
    move/from16 v14, v67

    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(I)V

    .line 1168
    .end local v67    # "binderProxyObjectCount":I
    .local v14, "binderProxyObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1170
    move/from16 v15, v68

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(I)V

    .line 1170
    .end local v68    # "binderDeathObjectCount":I
    .local v15, "binderDeathObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1171
    move/from16 v73, v14

    move/from16 v74, v15

    move-wide/from16 v14, v52

    invoke-virtual {v0, v14, v15}, Ljava/io/PrintWriter;->print(J)V

    .line 1171
    .end local v15    # "binderDeathObjectCount":I
    .end local v52    # "openSslSocketCount":J
    .local v14, "openSslSocketCount":J
    .local v73, "binderProxyObjectCount":I
    .local v74, "binderDeathObjectCount":I
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 1174
    move-object/from16 v4, v71

    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    .line 1174
    .end local v71    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v4, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1175
    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->memoryUsed:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1176
    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 1177
    iget v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->largestMemAlloc:I

    div-int/lit16 v1, v1, 0x400

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(I)V

    .line 1178
    nop

    .line 1178
    .local v35, "i":I
    :goto_1
    move/from16 v1, v35

    .line 1178
    .end local v35    # "i":I
    .local v1, "i":I
    move-wide/from16 v75, v14

    iget-object v14, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    .line 1178
    .end local v14    # "openSslSocketCount":J
    .local v75, "openSslSocketCount":J
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v14

    if-ge v1, v14, :cond_1

    .line 1179
    iget-object v14, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1180
    .local v14, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v15, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1181
    const/16 v15, 0x2c

    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    move/from16 v77, v12

    move/from16 v78, v13

    iget-wide v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->pageSize:J

    .line 1181
    .end local v12    # "globalAssetManagerCount":I
    .end local v13    # "binderLocalObjectCount":I
    .local v77, "globalAssetManagerCount":I
    .local v78, "binderLocalObjectCount":I
    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1182
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-wide v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->dbSize:J

    invoke-virtual {v0, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    .line 1183
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->lookaside:I

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 1184
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    invoke-virtual {v0, v15}, Ljava/io/PrintWriter;->print(C)V

    iget-object v12, v14, Landroid/database/sqlite/SQLiteDebug$DbStats;->cache:Ljava/lang/String;

    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1178
    .end local v14    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v35, v1, 0x1

    .line 1178
    .end local v1    # "i":I
    .restart local v35    # "i":I
    move-wide/from16 v14, v75

    move/from16 v12, v77

    move/from16 v13, v78

    goto :goto_1

    .line 1187
    .end local v35    # "i":I
    .end local v77    # "globalAssetManagerCount":I
    .end local v78    # "binderLocalObjectCount":I
    .restart local v12    # "globalAssetManagerCount":I
    .restart local v13    # "binderLocalObjectCount":I
    :cond_1
    move/from16 v77, v12

    move/from16 v78, v13

    .line 1187
    .end local v12    # "globalAssetManagerCount":I
    .end local v13    # "binderLocalObjectCount":I
    .restart local v77    # "globalAssetManagerCount":I
    .restart local v78    # "binderLocalObjectCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1189
    return-void

    .line 1192
    .end local v2    # "viewInstanceCount":J
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v5    # "viewRootInstanceCount":J
    .end local v7    # "appContextInstanceCount":J
    .end local v9    # "activityInstanceCount":J
    .end local v11    # "globalAssetCount":I
    .end local v73    # "binderProxyObjectCount":I
    .end local v74    # "binderDeathObjectCount":I
    .end local v75    # "openSslSocketCount":J
    .end local v77    # "globalAssetManagerCount":I
    .end local v78    # "binderLocalObjectCount":I
    .restart local v52    # "openSslSocketCount":J
    .restart local v56    # "activityInstanceCount":J
    .restart local v58    # "appContextInstanceCount":J
    .restart local v61    # "viewInstanceCount":J
    .restart local v63    # "viewRootInstanceCount":J
    .restart local v65    # "globalAssetManagerCount":I
    .restart local v66    # "binderLocalObjectCount":I
    .restart local v67    # "binderProxyObjectCount":I
    .restart local v68    # "binderDeathObjectCount":I
    .restart local v71    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v72    # "globalAssetCount":I
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

    .end local v52    # "openSslSocketCount":J
    .end local v56    # "activityInstanceCount":J
    .end local v58    # "appContextInstanceCount":J
    .end local v61    # "viewInstanceCount":J
    .end local v63    # "viewRootInstanceCount":J
    .end local v65    # "globalAssetManagerCount":I
    .end local v66    # "binderLocalObjectCount":I
    .end local v67    # "binderProxyObjectCount":I
    .end local v68    # "binderDeathObjectCount":I
    .end local v71    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .end local v72    # "globalAssetCount":I
    .restart local v2    # "viewInstanceCount":J
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v5    # "viewRootInstanceCount":J
    .restart local v7    # "appContextInstanceCount":J
    .restart local v9    # "activityInstanceCount":J
    .restart local v11    # "globalAssetCount":I
    .restart local v73    # "binderProxyObjectCount":I
    .restart local v74    # "binderDeathObjectCount":I
    .restart local v75    # "openSslSocketCount":J
    .restart local v77    # "globalAssetManagerCount":I
    .restart local v78    # "binderLocalObjectCount":I
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    const-string v1, " Objects"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
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

    .line 1195
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v36

    .line 1194
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1197
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

    .line 1198
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    aput-object v14, v13, v36

    .line 1197
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1200
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

    .line 1201
    move/from16 v14, v77

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    .line 1201
    .end local v77    # "globalAssetManagerCount":I
    .local v14, "globalAssetManagerCount":I
    aput-object v15, v13, v36

    .line 1200
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1203
    const-string v1, "%21s %8d %21s %8d"

    new-array v13, v12, [Ljava/lang/Object;

    const-string v15, "Local Binders:"

    aput-object v15, v13, v35

    move/from16 v15, v78

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1203
    .end local v78    # "binderLocalObjectCount":I
    .local v15, "binderLocalObjectCount":I
    aput-object v16, v13, v51

    const-string v16, "Proxy Binders:"

    const/16 v17, 0x2

    aput-object v16, v13, v17

    .line 1204
    move/from16 v12, v73

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    .line 1204
    .end local v73    # "binderProxyObjectCount":I
    .local v12, "binderProxyObjectCount":I
    aput-object v16, v13, v36

    .line 1203
    invoke-static {v0, v1, v13}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    const-string v1, "%21s %8d %21s %8d"

    move-wide/from16 v79, v2

    const/4 v13, 0x4

    new-array v2, v13, [Ljava/lang/Object;

    .line 1205
    .end local v2    # "viewInstanceCount":J
    .local v79, "viewInstanceCount":J
    const-string v3, "Parcel memory:"

    aput-object v3, v2, v35

    move-wide/from16 v81, v5

    div-long v5, v45, v21

    .line 1205
    .end local v5    # "viewRootInstanceCount":J
    .local v81, "viewRootInstanceCount":J
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v51

    const-string v3, "Parcel count:"

    const/4 v5, 0x2

    aput-object v3, v2, v5

    .line 1206
    move-wide/from16 v5, v69

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    .line 1206
    .end local v69    # "parcelCount":J
    .local v5, "parcelCount":J
    aput-object v3, v2, v36

    .line 1205
    invoke-static {v0, v1, v2}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    const-string v1, "%21s %8d %21s %8d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "Death Recipients:"

    aput-object v2, v3, v35

    move/from16 v2, v74

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 1207
    .end local v74    # "binderDeathObjectCount":I
    .local v2, "binderDeathObjectCount":I
    aput-object v13, v3, v51

    const-string v13, "OpenSSL Sockets:"

    move/from16 v83, v2

    const/4 v2, 0x2

    aput-object v13, v3, v2

    .line 1208
    .end local v2    # "binderDeathObjectCount":I
    .local v83, "binderDeathObjectCount":I
    move-wide/from16 v84, v5

    move-wide/from16 v5, v75

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    .line 1208
    .end local v75    # "openSslSocketCount":J
    .local v5, "openSslSocketCount":J
    .local v84, "parcelCount":J
    aput-object v13, v3, v36

    .line 1207
    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1209
    const-string v1, "%21s %8d"

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "WebViews:"

    aput-object v2, v3, v35

    move-wide/from16 v86, v5

    move-wide/from16 v5, v54

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .end local v54    # "webviewInstanceCount":J
    .local v5, "webviewInstanceCount":J
    .local v86, "openSslSocketCount":J
    aput-object v2, v3, v51

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1212
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1213
    const-string v1, " SQL"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1214
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

    .line 1215
    const-string v1, "%21s %8d %21s %8d"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Object;

    const-string v2, "PAGECACHE_OVERFLOW:"

    aput-object v2, v3, v35

    iget v2, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->pageCacheOverflow:I

    div-int/lit16 v2, v2, 0x400

    .line 1216
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

    .line 1215
    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1217
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1218
    iget-object v1, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1219
    .local v1, "N":I
    if-lez v1, :cond_6

    .line 1220
    const-string v2, " DATABASES"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1221
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

    .line 1223
    move/from16 v2, v35

    .line 1223
    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_6

    .line 1224
    iget-object v13, v4, Landroid/database/sqlite/SQLiteDebug$PagerStats;->dbStats:Ljava/util/ArrayList;

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/database/sqlite/SQLiteDebug$DbStats;

    .line 1225
    .local v13, "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    move/from16 v88, v1

    const-string v1, "  %8s %8s %14s %14s  %s"

    .line 1225
    .end local v1    # "N":I
    .local v88, "N":I
    move-object/from16 v89, v4

    new-array v4, v3, [Ljava/lang/Object;

    .line 1226
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .local v89, "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
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

    .line 1227
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

    .line 1228
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

    .line 1225
    move-object/from16 v3, v90

    invoke-static {v0, v1, v3}, Landroid/app/ActivityThread;->printRow(Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1223
    .end local v13    # "dbStats":Landroid/database/sqlite/SQLiteDebug$DbStats;
    add-int/lit8 v2, v2, 0x1

    move/from16 v1, v88

    move-object/from16 v4, v89

    const/4 v3, 0x5

    goto :goto_2

    .line 1234
    .end local v2    # "i":I
    .end local v88    # "N":I
    .end local v89    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v1    # "N":I
    .restart local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    :cond_6
    move/from16 v88, v1

    move-object/from16 v89, v4

    const/4 v4, 0x2

    .line 1234
    .end local v1    # "N":I
    .end local v4    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    .restart local v88    # "N":I
    .restart local v89    # "stats":Landroid/database/sqlite/SQLiteDebug$PagerStats;
    invoke-static {}, Landroid/content/res/AssetManager;->getAssetAllocations()Ljava/lang/String;

    move-result-object v1

    .line 1235
    .local v1, "assetAlloc":Ljava/lang/String;
    if-eqz v1, :cond_7

    .line 1236
    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1237
    const-string v2, " Asset Allocations"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1238
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1242
    :cond_7
    if-eqz p7, :cond_b

    .line 1243
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

    .line 1246
    .local v4, "showContents":Z
    const-string v13, " "

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1247
    const-string v13, " Unreachable memory"

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1248
    const/16 v13, 0x64

    invoke-static {v13, v4}, Landroid/os/Debug;->getUnreachableMemory(IZ)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1248
    .end local v4    # "showContents":Z
    goto :goto_6

    .line 1250
    :cond_b
    move-object/from16 v3, p0

    :goto_6
    return-void
.end method

.method static synthetic lambda$scheduleTrimMemory$0(Ljava/lang/Object;I)V
    .locals 1
    .param p0, "rec$"    # Ljava/lang/Object;
    .param p1, "x$0"    # I

    .line 1453
    move-object v0, p0

    check-cast v0, Landroid/app/ActivityThread;

    invoke-static {v0, p1}, Landroid/app/ActivityThread;->access$1100(Landroid/app/ActivityThread;I)V

    return-void
.end method

.method private updatePendingConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "config"    # Landroid/content/res/Configuration;

    .line 793
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$100(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v0

    monitor-enter v0

    .line 794
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 795
    invoke-virtual {v1, p1}, Landroid/content/res/Configuration;->isOtherSeqNewer(Landroid/content/res/Configuration;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 796
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iput-object p1, v1, Landroid/app/ActivityThread;->mPendingConfiguration:Landroid/content/res/Configuration;

    .line 798
    :cond_1
    monitor-exit v0

    .line 799
    return-void

    .line 798
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
    .param p1, "agent"    # Ljava/lang/String;

    .line 1046
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9b

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1047
    return-void
.end method

.method public final bindApplication(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/util/List;Landroid/content/ComponentName;Landroid/app/ProfilerInfo;Landroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;IZZZZLandroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/util/Map;Landroid/os/Bundle;Ljava/lang/String;Z)V
    .locals 17
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "appInfo"    # Landroid/content/pm/ApplicationInfo;
    .param p4, "instrumentationName"    # Landroid/content/ComponentName;
    .param p5, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p6, "instrumentationArgs"    # Landroid/os/Bundle;
    .param p7, "instrumentationWatcher"    # Landroid/app/IInstrumentationWatcher;
    .param p8, "instrumentationUiConnection"    # Landroid/app/IUiAutomationConnection;
    .param p9, "debugMode"    # I
    .param p10, "enableBinderTracking"    # Z
    .param p11, "trackAllocation"    # Z
    .param p12, "isRestrictedBackupMode"    # Z
    .param p13, "persistent"    # Z
    .param p14, "config"    # Landroid/content/res/Configuration;
    .param p15, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p16, "services"    # Ljava/util/Map;
    .param p17, "coreSettings"    # Landroid/os/Bundle;
    .param p18, "buildSerial"    # Ljava/lang/String;
    .param p19, "autofillCompatibilityEnabled"    # Z
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

    .local p3, "providers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ProviderInfo;>;"
    move-object/from16 v0, p0

    .line 901
    if-eqz p16, :cond_0

    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->isEmbryo()Z

    move-result v2

    if-nez v2, :cond_0

    .line 925
    invoke-static/range {p16 .. p16}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 928
    :cond_0
    move-object/from16 v2, p17

    invoke-virtual {v0, v2}, Landroid/app/ActivityThread$ApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V

    .line 930
    new-instance v3, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v3}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    .line 931
    .local v3, "data":Landroid/app/ActivityThread$AppBindData;
    move-object/from16 v4, p1

    iput-object v4, v3, Landroid/app/ActivityThread$AppBindData;->processName:Ljava/lang/String;

    .line 932
    move-object/from16 v5, p2

    iput-object v5, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 933
    move-object/from16 v6, p3

    iput-object v6, v3, Landroid/app/ActivityThread$AppBindData;->providers:Ljava/util/List;

    .line 934
    move-object/from16 v7, p4

    iput-object v7, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationName:Landroid/content/ComponentName;

    .line 935
    move-object/from16 v8, p6

    iput-object v8, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationArgs:Landroid/os/Bundle;

    .line 936
    move-object/from16 v9, p7

    iput-object v9, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationWatcher:Landroid/app/IInstrumentationWatcher;

    .line 937
    move-object/from16 v10, p8

    iput-object v10, v3, Landroid/app/ActivityThread$AppBindData;->instrumentationUiAutomationConnection:Landroid/app/IUiAutomationConnection;

    .line 938
    move/from16 v11, p9

    iput v11, v3, Landroid/app/ActivityThread$AppBindData;->debugMode:I

    .line 939
    move/from16 v12, p10

    iput-boolean v12, v3, Landroid/app/ActivityThread$AppBindData;->enableBinderTracking:Z

    .line 940
    move/from16 v13, p11

    iput-boolean v13, v3, Landroid/app/ActivityThread$AppBindData;->trackAllocation:Z

    .line 941
    move/from16 v14, p12

    iput-boolean v14, v3, Landroid/app/ActivityThread$AppBindData;->restrictedBackupMode:Z

    .line 942
    move/from16 v15, p13

    iput-boolean v15, v3, Landroid/app/ActivityThread$AppBindData;->persistent:Z

    .line 943
    move-object/from16 v1, p14

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->config:Landroid/content/res/Configuration;

    .line 944
    move-object/from16 v1, p15

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 945
    move-object/from16 v1, p5

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->initProfilerInfo:Landroid/app/ProfilerInfo;

    .line 946
    move-object/from16 v1, p18

    iput-object v1, v3, Landroid/app/ActivityThread$AppBindData;->buildSerial:Ljava/lang/String;

    .line 947
    move/from16 v1, p19

    iput-boolean v1, v3, Landroid/app/ActivityThread$AppBindData;->autofillCompatibilityEnabled:Z

    .line 948
    iget-object v1, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v0, 0x6e

    invoke-virtual {v1, v0, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 949
    return-void
.end method

.method public clearDnsCache()V
    .locals 1

    .line 976
    invoke-static {}, Ljava/net/InetAddress;->clearDnsCache()V

    .line 979
    invoke-static {}, Llibcore/net/event/NetworkEventDispatcher;->getInstance()Llibcore/net/event/NetworkEventDispatcher;

    move-result-object v0

    invoke-virtual {v0}, Llibcore/net/event/NetworkEventDispatcher;->onNetworkConfigurationChanged()V

    .line 980
    return-void
.end method

.method public dispatchPackageBroadcast(I[Ljava/lang/String;)V
    .locals 2
    .param p1, "cmd"    # I
    .param p2, "packages"    # [Ljava/lang/String;

    .line 1062
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x85

    invoke-static {v0, v1, p2, p1}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1063
    return-void
.end method

.method public dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "activitytoken"    # Landroid/os/IBinder;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "args"    # [Ljava/lang/String;

    .line 1071
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1073
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1074
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1075
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->prefix:Ljava/lang/String;

    .line 1076
    iput-object p4, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1077
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

    .line 1081
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpActivity failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1081
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1082
    nop

    .line 1083
    return-void

    .line 1081
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public dumpDbInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 4
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1394
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-boolean v0, v0, Landroid/app/ActivityThread;->mSystemThread:Z

    if-eqz v0, :cond_0

    .line 1400
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    .local v0, "dup":Landroid/os/ParcelFileDescriptor;
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1406
    nop

    .line 1405
    nop

    .line 1408
    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Landroid/app/ActivityThread$ApplicationThread$1;

    invoke-direct {v2, p0, v0, p2}, Landroid/app/ActivityThread$ApplicationThread$1;-><init>(Landroid/app/ActivityThread$ApplicationThread;Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 1418
    .end local v0    # "dup":Landroid/os/ParcelFileDescriptor;
    goto :goto_1

    .line 1405
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 1401
    :catch_0
    move-exception v0

    .line 1402
    .local v0, "e":Ljava/io/IOException;
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

    .line 1405
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1403
    return-void

    .line 1405
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1419
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/app/ActivityThread$ApplicationThread;->dumpDatabaseInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V

    .line 1420
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1422
    :goto_1
    return-void
.end method

.method public dumpGfxInfo(Landroid/os/ParcelFileDescriptor;[Ljava/lang/String;)V
    .locals 2
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "args"    # [Ljava/lang/String;

    .line 1379
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/app/ActivityThread;->access$600(Landroid/app/ActivityThread;Ljava/io/FileDescriptor;)V

    .line 1380
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getInstance()Landroid/view/WindowManagerGlobal;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/view/WindowManagerGlobal;->dumpGfxInfo(Ljava/io/FileDescriptor;[Ljava/lang/String;)V

    .line 1381
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1382
    return-void
.end method

.method public dumpHeap(ZZZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 7
    .param p1, "managed"    # Z
    .param p2, "mallocInfo"    # Z
    .param p3, "runGc"    # Z
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "fd"    # Landroid/os/ParcelFileDescriptor;

    .line 1036
    new-instance v0, Landroid/app/ActivityThread$DumpHeapData;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpHeapData;-><init>()V

    .line 1037
    .local v0, "dhd":Landroid/app/ActivityThread$DumpHeapData;
    iput-boolean p1, v0, Landroid/app/ActivityThread$DumpHeapData;->managed:Z

    .line 1038
    iput-boolean p2, v0, Landroid/app/ActivityThread$DumpHeapData;->mallocInfo:Z

    .line 1039
    iput-boolean p3, v0, Landroid/app/ActivityThread$DumpHeapData;->runGc:Z

    .line 1040
    iput-object p4, v0, Landroid/app/ActivityThread$DumpHeapData;->path:Ljava/lang/String;

    .line 1041
    iput-object p5, v0, Landroid/app/ActivityThread$DumpHeapData;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1042
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x87

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v3, v0

    invoke-static/range {v1 .. v6}, Landroid/app/ActivityThread;->access$400(Landroid/app/ActivityThread;ILjava/lang/Object;IIZ)V

    .line 1043
    return-void
.end method

.method public dumpMemInfo(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZZ[Ljava/lang/String;)V
    .locals 11
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "checkin"    # Z
    .param p4, "dumpFullInfo"    # Z
    .param p5, "dumpDalvik"    # Z
    .param p6, "dumpSummaryOnly"    # Z
    .param p7, "dumpUnreachable"    # Z
    .param p8, "args"    # [Ljava/lang/String;

    .line 1104
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1105
    .local v1, "fout":Ljava/io/FileOutputStream;
    new-instance v0, Lcom/android/internal/util/FastPrintWriter;

    invoke-direct {v0, v1}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/OutputStream;)V

    move-object v10, v0

    .line 1107
    .local v10, "pw":Ljava/io/PrintWriter;
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

    .line 1109
    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 1110
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1111
    nop

    .line 1112
    return-void

    .line 1109
    :catchall_0
    move-exception v0

    invoke-virtual {v10}, Ljava/io/PrintWriter;->flush()V

    .line 1110
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v0

    throw v2
.end method

.method public dumpMemInfoProto(Landroid/os/ParcelFileDescriptor;Landroid/os/Debug$MemoryInfo;ZZZZ[Ljava/lang/String;)V
    .locals 9
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "mem"    # Landroid/os/Debug$MemoryInfo;
    .param p3, "dumpFullInfo"    # Z
    .param p4, "dumpDalvik"    # Z
    .param p5, "dumpSummaryOnly"    # Z
    .param p6, "dumpUnreachable"    # Z
    .param p7, "args"    # [Ljava/lang/String;

    .line 1256
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    move-object v1, v0

    .line 1258
    .local v1, "proto":Landroid/util/proto/ProtoOutputStream;
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

    .line 1260
    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1261
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1262
    nop

    .line 1263
    return-void

    .line 1260
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1261
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move-object v2, v0

    throw v2
.end method

.method public dumpProvider(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "providertoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 1087
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1089
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1090
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1091
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1092
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

    .line 1096
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1093
    :catch_0
    move-exception v1

    .line 1094
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpProvider failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1096
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1097
    nop

    .line 1098
    return-void

    .line 1096
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public dumpService(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p2, "servicetoken"    # Landroid/os/IBinder;
    .param p3, "args"    # [Ljava/lang/String;

    .line 999
    new-instance v0, Landroid/app/ActivityThread$DumpComponentInfo;

    invoke-direct {v0}, Landroid/app/ActivityThread$DumpComponentInfo;-><init>()V

    .line 1001
    .local v0, "data":Landroid/app/ActivityThread$DumpComponentInfo;
    :try_start_0
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    iput-object v1, v0, Landroid/app/ActivityThread$DumpComponentInfo;->fd:Landroid/os/ParcelFileDescriptor;

    .line 1002
    iput-object p2, v0, Landroid/app/ActivityThread$DumpComponentInfo;->token:Landroid/os/IBinder;

    .line 1003
    iput-object p3, v0, Landroid/app/ActivityThread$DumpComponentInfo;->args:[Ljava/lang/String;

    .line 1004
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

    .line 1008
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 1005
    :catch_0
    move-exception v1

    .line 1006
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    const-string v2, "ActivityThread"

    const-string v3, "dumpService failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1008
    .end local v1    # "e":Ljava/io/IOException;
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1009
    nop

    .line 1010
    return-void

    .line 1008
    :goto_1
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v1
.end method

.method public handleTrustStorageUpdate()V
    .locals 1

    .line 1591
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->handleTrustStorageUpdate()V

    .line 1592
    return-void
.end method

.method public notifyCleartextNetwork([B)V
    .locals 1
    .param p1, "firstPacket"    # [B

    .line 1538
    invoke-static {}, Landroid/os/StrictMode;->vmCleartextNetworkEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1539
    invoke-static {p1}, Landroid/os/StrictMode;->onCleartextNetworkDetected([B)V

    .line 1541
    :cond_0
    return-void
.end method

.method public processInBackground()V
    .locals 3

    .line 994
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->removeMessages(I)V

    .line 995
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v0, v0, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v1}, Landroid/app/ActivityThread$H;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActivityThread$H;->sendMessage(Landroid/os/Message;)Z

    .line 996
    return-void
.end method

.method public profilerControl(ZLandroid/app/ProfilerInfo;I)V
    .locals 2
    .param p1, "start"    # Z
    .param p2, "profilerInfo"    # Landroid/app/ProfilerInfo;
    .param p3, "profileType"    # I

    .line 1030
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7f

    invoke-static {v0, v1, p2, p1, p3}, Landroid/app/ActivityThread;->access$500(Landroid/app/ActivityThread;ILjava/lang/Object;II)V

    .line 1031
    return-void
.end method

.method public requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V
    .locals 3
    .param p1, "activityToken"    # Landroid/os/IBinder;
    .param p2, "requestToken"    # Landroid/os/IBinder;
    .param p3, "requestType"    # I
    .param p4, "sessionId"    # I
    .param p5, "flags"    # I

    .line 1432
    new-instance v0, Landroid/app/ActivityThread$RequestAssistContextExtras;

    invoke-direct {v0}, Landroid/app/ActivityThread$RequestAssistContextExtras;-><init>()V

    .line 1433
    .local v0, "cmd":Landroid/app/ActivityThread$RequestAssistContextExtras;
    iput-object p1, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->activityToken:Landroid/os/IBinder;

    .line 1434
    iput-object p2, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestToken:Landroid/os/IBinder;

    .line 1435
    iput p3, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->requestType:I

    .line 1436
    iput p4, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->sessionId:I

    .line 1437
    iput p5, v0, Landroid/app/ActivityThread$RequestAssistContextExtras;->flags:I

    .line 1438
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8f

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1439
    return-void
.end method

.method public final runIsolatedEntryPoint(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "entryPoint"    # Ljava/lang/String;
    .param p2, "entryPointArgs"    # [Ljava/lang/String;

    .line 952
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 953
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 954
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 955
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9e

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 956
    return-void
.end method

.method public scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V
    .locals 2
    .param p1, "ai"    # Landroid/content/pm/ApplicationInfo;

    .line 967
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x9c

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 968
    return-void
.end method

.method public final scheduleBindService(Landroid/os/IBinder;Landroid/content/Intent;ZI)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "rebind"    # Z
    .param p4, "processState"    # I

    .line 848
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 849
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 850
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 851
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 852
    iput-boolean p3, v0, Landroid/app/ActivityThread$BindServiceData;->rebind:Z

    .line 854
    invoke-static {}, Landroid/app/ActivityThread;->access$300()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 855
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

    .line 856
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

    .line 855
    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 857
    :cond_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x79

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 858
    return-void
.end method

.method public scheduleCrash(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .line 1066
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x86

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1067
    return-void
.end method

.method public final scheduleCreateBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "backupMode"    # I

    .line 818
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 819
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 820
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 821
    iput p3, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->backupMode:I

    .line 823
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x80

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 824
    return-void
.end method

.method public final scheduleCreateService(Landroid/os/IBinder;Landroid/content/pm/ServiceInfo;Landroid/content/res/CompatibilityInfo;I)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "info"    # Landroid/content/pm/ServiceInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "processState"    # I

    .line 837
    const/4 v0, 0x0

    invoke-virtual {p0, p4, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 838
    new-instance v0, Landroid/app/ActivityThread$CreateServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateServiceData;-><init>()V

    .line 839
    .local v0, "s":Landroid/app/ActivityThread$CreateServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateServiceData;->token:Landroid/os/IBinder;

    .line 840
    iput-object p2, v0, Landroid/app/ActivityThread$CreateServiceData;->info:Landroid/content/pm/ServiceInfo;

    .line 841
    iput-object p3, v0, Landroid/app/ActivityThread$CreateServiceData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 843
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x72

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 844
    return-void
.end method

.method public final scheduleDestroyBackupAgent(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "app"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;

    .line 828
    new-instance v0, Landroid/app/ActivityThread$CreateBackupAgentData;

    invoke-direct {v0}, Landroid/app/ActivityThread$CreateBackupAgentData;-><init>()V

    .line 829
    .local v0, "d":Landroid/app/ActivityThread$CreateBackupAgentData;
    iput-object p1, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 830
    iput-object p2, v0, Landroid/app/ActivityThread$CreateBackupAgentData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 832
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x81

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 833
    return-void
.end method

.method public scheduleEnterAnimationComplete(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 1533
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x95

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1534
    return-void
.end method

.method public final scheduleExit()V
    .locals 3

    .line 959
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x6f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 960
    return-void
.end method

.method public scheduleInstallProvider(Landroid/content/pm/ProviderInfo;)V
    .locals 2
    .param p1, "provider"    # Landroid/content/pm/ProviderInfo;

    .line 1512
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x91

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1513
    return-void
.end method

.method public scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "voiceInteractor"    # Lcom/android/internal/app/IVoiceInteractor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1561
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 1562
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 1563
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 1564
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x9a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1565
    return-void
.end method

.method public scheduleLowMemory()V
    .locals 3

    .line 1025
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x7c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1026
    return-void
.end method

.method public scheduleOnNewActivityOptions(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 1469
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v1, Landroid/util/Pair;

    .line 1470
    invoke-static {p2}, Landroid/app/ActivityOptions;->fromBundle(Landroid/os/Bundle;)Landroid/app/ActivityOptions;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1469
    const/16 v2, 0x92

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1471
    return-void
.end method

.method public schedulePreload(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;Landroid/content/res/Configuration;Ljava/util/Map;)V
    .locals 5
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p3, "config"    # Landroid/content/res/Configuration;
    .param p4, "services"    # Ljava/util/Map;

    .line 1572
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$1002(Ljava/lang/String;)Ljava/lang/String;

    .line 1573
    if-eqz p4, :cond_0

    .line 1575
    invoke-static {p4}, Landroid/os/ServiceManager;->initServiceCache(Ljava/util/Map;)V

    .line 1576
    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->setMyself()V

    .line 1578
    :cond_0
    invoke-static {}, Lcom/oneplus/embryo/EmbryoApp;->getInstance()Lcom/oneplus/embryo/EmbryoApp;

    move-result-object v0

    .line 1579
    .local v0, "app":Lcom/oneplus/embryo/EmbryoApp;
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1}, Landroid/app/ActivityThread;->access$100(Landroid/app/ActivityThread;)Landroid/app/ResourcesManager;

    move-result-object v1

    invoke-virtual {v1, p3, p2}, Landroid/app/ResourcesManager;->applyConfigurationToResourcesLocked(Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;)Z

    .line 1580
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v1, p1, p2}, Landroid/app/ActivityThread;->getPackageInfoNoCheck(Landroid/content/pm/ApplicationInfo;Landroid/content/res/CompatibilityInfo;)Landroid/app/LoadedApk;

    move-result-object v1

    .line 1581
    .local v1, "apk":Landroid/app/LoadedApk;
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v2, v1}, Landroid/app/ContextImpl;->createAppContext(Landroid/app/ActivityThread;Landroid/app/LoadedApk;)Landroid/app/ContextImpl;

    move-result-object v2

    .line 1582
    .local v2, "context":Landroid/content/Context;
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    new-instance v4, Landroid/app/ActivityThread$AppBindData;

    invoke-direct {v4}, Landroid/app/ActivityThread$AppBindData;-><init>()V

    iput-object v4, v3, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    .line 1583
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    iput-object p1, v3, Landroid/app/ActivityThread$AppBindData;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 1584
    invoke-virtual {v0, v2}, Lcom/oneplus/embryo/EmbryoApp;->attach(Landroid/content/Context;)V

    .line 1585
    iget-object v3, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v0}, Lcom/oneplus/embryo/EmbryoApp;->getRunnable()Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 1586
    return-void
.end method

.method public final scheduleReceiver(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/res/CompatibilityInfo;ILjava/lang/String;Landroid/os/Bundle;ZII)V
    .locals 12
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "info"    # Landroid/content/pm/ActivityInfo;
    .param p3, "compatInfo"    # Landroid/content/res/CompatibilityInfo;
    .param p4, "resultCode"    # I
    .param p5, "data"    # Ljava/lang/String;
    .param p6, "extras"    # Landroid/os/Bundle;
    .param p7, "sync"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I

    move-object v0, p0

    .line 808
    const/4 v1, 0x0

    move/from16 v2, p9

    invoke-virtual {v0, v2, v1}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 809
    new-instance v1, Landroid/app/ActivityThread$ReceiverData;

    iget-object v3, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v3, v3, Landroid/app/ActivityThread;->mAppThread:Landroid/app/ActivityThread$ApplicationThread;

    .line 810
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

    .line 811
    .local v1, "r":Landroid/app/ActivityThread$ReceiverData;
    move-object v3, p2

    iput-object v3, v1, Landroid/app/ActivityThread$ReceiverData;->info:Landroid/content/pm/ActivityInfo;

    .line 812
    move-object v4, p3

    iput-object v4, v1, Landroid/app/ActivityThread$ReceiverData;->compatInfo:Landroid/content/res/CompatibilityInfo;

    .line 813
    iget-object v5, v0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v6, 0x71

    invoke-virtual {v5, v6, v1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 814
    return-void
.end method

.method public scheduleRegisteredReceiver(Landroid/content/IIntentReceiver;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZII)V
    .locals 1
    .param p1, "receiver"    # Landroid/content/IIntentReceiver;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resultCode"    # I
    .param p4, "dataStr"    # Ljava/lang/String;
    .param p5, "extras"    # Landroid/os/Bundle;
    .param p6, "ordered"    # Z
    .param p7, "sticky"    # Z
    .param p8, "sendingUser"    # I
    .param p9, "processState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1018
    const/4 v0, 0x0

    invoke-virtual {p0, p9, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1019
    invoke-interface/range {p1 .. p8}, Landroid/content/IIntentReceiver;->performReceive(Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;ZZI)V

    .line 1021
    return-void
.end method

.method public final scheduleServiceArgs(Landroid/os/IBinder;Landroid/content/pm/ParceledListSlice;)V
    .locals 6
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "args"    # Landroid/content/pm/ParceledListSlice;

    .line 869
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 871
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Landroid/app/ServiceStartArgs;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 872
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ServiceStartArgs;

    .line 873
    .local v2, "ssa":Landroid/app/ServiceStartArgs;
    new-instance v3, Landroid/app/ActivityThread$ServiceArgsData;

    invoke-direct {v3}, Landroid/app/ActivityThread$ServiceArgsData;-><init>()V

    .line 874
    .local v3, "s":Landroid/app/ActivityThread$ServiceArgsData;
    iput-object p1, v3, Landroid/app/ActivityThread$ServiceArgsData;->token:Landroid/os/IBinder;

    .line 875
    iget-boolean v4, v2, Landroid/app/ServiceStartArgs;->taskRemoved:Z

    iput-boolean v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->taskRemoved:Z

    .line 876
    iget v4, v2, Landroid/app/ServiceStartArgs;->startId:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->startId:I

    .line 877
    iget v4, v2, Landroid/app/ServiceStartArgs;->flags:I

    iput v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->flags:I

    .line 878
    iget-object v4, v2, Landroid/app/ServiceStartArgs;->args:Landroid/content/Intent;

    iput-object v4, v3, Landroid/app/ActivityThread$ServiceArgsData;->args:Landroid/content/Intent;

    .line 880
    iget-object v4, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v5, 0x73

    invoke-virtual {v4, v5, v3}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 871
    .end local v2    # "ssa":Landroid/app/ServiceStartArgs;
    .end local v3    # "s":Landroid/app/ActivityThread$ServiceArgsData;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 882
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public final scheduleSleeping(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "sleeping"    # Z

    .line 802
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x89

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 803
    return-void
.end method

.method public final scheduleStopService(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;

    .line 885
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x74

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 886
    return-void
.end method

.method public final scheduleSuicide()V
    .locals 3

    .line 963
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x82

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 964
    return-void
.end method

.method public scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 1
    .param p1, "transaction"    # Landroid/app/servertransaction/ClientTransaction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1596
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1597
    return-void
.end method

.method public scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    .locals 2
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "drawComplete"    # Z

    .line 1465
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x90

    invoke-static {v0, v1, p1, p2}, Landroid/app/ActivityThread;->access$200(Landroid/app/ActivityThread;ILjava/lang/Object;I)V

    .line 1466
    return-void
.end method

.method public scheduleTrimMemory(I)V
    .locals 4
    .param p1, "level"    # I

    .line 1453
    sget-object v0, Landroid/app/-$$Lambda$ActivityThread$ApplicationThread$tUGFX7CUhzB4Pg5wFd5yeqOnu38;->INSTANCE:Landroid/app/-$$Lambda$ActivityThread$ApplicationThread$tUGFX7CUhzB4Pg5wFd5yeqOnu38;

    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    .line 1454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1453
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v0

    .line 1456
    .local v0, "r":Ljava/lang/Runnable;
    invoke-static {}, Landroid/view/Choreographer;->getMainThreadInstance()Landroid/view/Choreographer;

    move-result-object v1

    .line 1457
    .local v1, "choreographer":Landroid/view/Choreographer;
    if-eqz v1, :cond_0

    .line 1458
    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    goto :goto_0

    .line 1460
    :cond_0
    iget-object v2, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    iget-object v2, v2, Landroid/app/ActivityThread;->mH:Landroid/app/ActivityThread$H;

    invoke-virtual {v2, v0}, Landroid/app/ActivityThread$H;->post(Ljava/lang/Runnable;)Z

    .line 1462
    :goto_0
    return-void
.end method

.method public final scheduleUnbindService(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 3
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 861
    new-instance v0, Landroid/app/ActivityThread$BindServiceData;

    invoke-direct {v0}, Landroid/app/ActivityThread$BindServiceData;-><init>()V

    .line 862
    .local v0, "s":Landroid/app/ActivityThread$BindServiceData;
    iput-object p1, v0, Landroid/app/ActivityThread$BindServiceData;->token:Landroid/os/IBinder;

    .line 863
    iput-object p2, v0, Landroid/app/ActivityThread$BindServiceData;->intent:Landroid/content/Intent;

    .line 865
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x7a

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 866
    return-void
.end method

.method public setCoreSettings(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "coreSettings"    # Landroid/os/Bundle;

    .line 1442
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8a

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1443
    return-void
.end method

.method public setHttpProxy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 3
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # Ljava/lang/String;
    .param p3, "exclList"    # Ljava/lang/String;
    .param p4, "pacFileUrl"    # Landroid/net/Uri;

    .line 984
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

    .line 983
    :goto_0
    invoke-static {v0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 985
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getBoundNetworkForProcess()Landroid/net/Network;

    move-result-object v1

    .line 986
    .local v1, "network":Landroid/net/Network;
    if-eqz v1, :cond_1

    .line 987
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Landroid/net/ProxyInfo;)V

    goto :goto_1

    .line 989
    :cond_1
    invoke-static {p1, p2, p3, p4}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 991
    :goto_1
    return-void
.end method

.method public setNetworkBlockSeq(J)V
    .locals 2
    .param p1, "procStateSeq"    # J

    .line 1505
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v0}, Landroid/app/ActivityThread;->access$800(Landroid/app/ActivityThread;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1506
    :try_start_0
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-static {v1, p1, p2}, Landroid/app/ActivityThread;->access$902(Landroid/app/ActivityThread;J)J

    .line 1507
    monitor-exit v0

    .line 1508
    return-void

    .line 1507
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProcessState(I)V
    .locals 1
    .param p1, "state"    # I

    .line 1474
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/ActivityThread$ApplicationThread;->updateProcessState(IZ)V

    .line 1475
    return-void
.end method

.method public setSchedulingGroup(I)V
    .locals 4
    .param p1, "group"    # I

    .line 1055
    :try_start_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0, p1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1058
    goto :goto_0

    .line 1056
    :catch_0
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "ActivityThread"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed setting process group to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1059
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public startBinderTracking()V
    .locals 3

    .line 1545
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x96

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1546
    return-void
.end method

.method public stopBinderTrackingAndDump(Landroid/os/ParcelFileDescriptor;)V
    .locals 3
    .param p1, "pfd"    # Landroid/os/ParcelFileDescriptor;

    .line 1551
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

    .line 1554
    :catchall_0
    move-exception v0

    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    .line 1552
    :catch_0
    move-exception v0

    .line 1554
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 1555
    nop

    .line 1556
    return-void
.end method

.method public switchActivityThreadLog(Z)V
    .locals 3
    .param p1, "on"    # Z

    .line 1602
    const-string v0, "ActivityThread"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# switchActivityThreadLog # on="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    invoke-virtual {v0, p1}, Landroid/app/ActivityThread;->updateActivityThreadLog(Z)V

    .line 1604
    return-void
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 2
    .param p1, "provider"    # Landroid/os/IBinder;

    .line 1426
    iget-object v0, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v1, 0x8e

    invoke-virtual {v0, v1, p1}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1427
    return-void
.end method

.method public updatePackageCompatibilityInfo(Ljava/lang/String;Landroid/content/res/CompatibilityInfo;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/res/CompatibilityInfo;

    .line 1446
    new-instance v0, Landroid/app/ActivityThread$UpdateCompatibilityData;

    invoke-direct {v0}, Landroid/app/ActivityThread$UpdateCompatibilityData;-><init>()V

    .line 1447
    .local v0, "ucd":Landroid/app/ActivityThread$UpdateCompatibilityData;
    iput-object p1, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->pkg:Ljava/lang/String;

    .line 1448
    iput-object p2, v0, Landroid/app/ActivityThread$UpdateCompatibilityData;->info:Landroid/content/res/CompatibilityInfo;

    .line 1449
    iget-object v1, p0, Landroid/app/ActivityThread$ApplicationThread;->this$0:Landroid/app/ActivityThread;

    const/16 v2, 0x8b

    invoke-virtual {v1, v2, v0}, Landroid/app/ActivityThread;->sendMessage(ILjava/lang/Object;)V

    .line 1450
    return-void
.end method

.method public updateProcessState(IZ)V
    .locals 4
    .param p1, "processState"    # I
    .param p2, "fromIpc"    # Z

    .line 1478
    monitor-enter p0

    .line 1479
    :try_start_0
    iget v0, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    if-eq v0, p1, :cond_1

    .line 1480
    iput p1, p0, Landroid/app/ActivityThread$ApplicationThread;->mLastProcessState:I

    .line 1482
    const/4 v0, 0x0

    .line 1483
    .local v0, "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    const/4 v1, 0x1

    .line 1484
    .local v1, "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    const/4 v2, 0x1

    .line 1486
    .local v2, "dalvikProcessState":I
    const/4 v3, 0x5

    if-gt p1, v3, :cond_0

    .line 1487
    const/4 v2, 0x0

    .line 1489
    :cond_0
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ldalvik/system/VMRuntime;->updateProcessState(I)V

    .line 1495
    .end local v0    # "DALVIK_PROCESS_STATE_JANK_PERCEPTIBLE":I
    .end local v1    # "DALVIK_PROCESS_STATE_JANK_IMPERCEPTIBLE":I
    .end local v2    # "dalvikProcessState":I
    :cond_1
    monitor-exit p0

    .line 1496
    return-void

    .line 1495
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final updateTimePrefs(I)V
    .locals 1
    .param p1, "timeFormatPreference"    # I

    .line 1519
    if-nez p1, :cond_0

    .line 1520
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .local v0, "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_0
    goto :goto_1

    .line 1521
    .end local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1522
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 1526
    :cond_1
    const/4 v0, 0x0

    .line 1528
    .restart local v0    # "timeFormatPreferenceBool":Ljava/lang/Boolean;
    :goto_1
    invoke-static {v0}, Ljava/text/DateFormat;->set24HourTimePref(Ljava/lang/Boolean;)V

    .line 1529
    return-void
.end method

.method public updateTimeZone()V
    .locals 1

    .line 971
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/util/TimeZone;->setDefault(Ljava/util/TimeZone;)V

    .line 972
    return-void
.end method
