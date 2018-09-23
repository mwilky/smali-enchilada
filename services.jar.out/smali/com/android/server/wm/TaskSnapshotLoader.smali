.class Lcom/android/server/wm/TaskSnapshotLoader;
.super Ljava/lang/Object;
.source "TaskSnapshotLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"


# instance fields
.field private final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    return-void
.end method


# virtual methods
.method loadTask(IIZ)Landroid/app/ActivityManager$TaskSnapshot;
    .locals 23

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v14

    if-eqz p3, :cond_0

    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/wm/TaskSnapshotLoader;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v0

    :goto_0
    move-object v13, v0

    const/4 v15, 0x0

    if-eqz v13, :cond_5

    invoke-virtual {v14}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    move-object/from16 v19, v13

    goto/16 :goto_3

    :cond_1
    :try_start_0
    invoke-virtual {v14}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/file/Files;->readAllBytes(Ljava/nio/file/Path;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    move-result-object v4

    move-object v12, v4

    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    move-object v11, v4

    sget-object v4, Landroid/graphics/Bitmap$Config;->HARDWARE:Landroid/graphics/Bitmap$Config;

    iput-object v4, v11, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v11}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    move-object v10, v4

    if-nez v10, :cond_2

    :try_start_1
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v15

    :catch_0
    move-exception v0

    move-object/from16 v19, v13

    goto/16 :goto_2

    :cond_2
    :try_start_2
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->createGraphicBufferHandle()Landroid/graphics/GraphicBuffer;

    move-result-object v4
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object/from16 v16, v4

    if-nez v16, :cond_3

    :try_start_3
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to retrieve gralloc buffer for bitmap: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    return-object v15

    :cond_3
    :try_start_4
    new-instance v17, Landroid/app/ActivityManager$TaskSnapshot;

    iget v6, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    new-instance v7, Landroid/graphics/Rect;

    iget v4, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget v5, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget v8, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iget v9, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    invoke-direct {v7, v4, v5, v8, v9}, Landroid/graphics/Rect;-><init>(IIII)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    if-eqz p3, :cond_4

    :try_start_5
    sget v4, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :cond_4
    const/high16 v4, 0x3f800000    # 1.0f

    :goto_1
    move v9, v4

    :try_start_6
    iget-boolean v8, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget v5, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget v4, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    move-object/from16 v18, v0

    iget-boolean v0, v12, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    move/from16 v19, v4

    move-object/from16 v4, v17

    move/from16 v20, v5

    move-object/from16 v5, v16

    move/from16 v21, v8

    move/from16 v8, p3

    move-object/from16 v22, v10

    move/from16 v10, v21

    move-object/from16 v21, v11

    move/from16 v11, v20

    move-object/from16 v20, v12

    move/from16 v12, v19

    move-object/from16 v19, v13

    move v13, v0

    :try_start_7
    invoke-direct/range {v4 .. v13}, Landroid/app/ActivityManager$TaskSnapshot;-><init>(Landroid/graphics/GraphicBuffer;ILandroid/graphics/Rect;ZFZIIZ)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    return-object v17

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    move-object/from16 v19, v13

    :goto_2
    const-string v4, "WindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to load task snapshot data for taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v15

    :cond_5
    move-object/from16 v19, v13

    :goto_3
    return-object v15
.end method
