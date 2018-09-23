.class Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StoreWriteQueueItem"
.end annotation


# instance fields
.field private final mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

.field private final mTaskId:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;IILandroid/app/ActivityManager$TaskSnapshot;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V

    iput p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iput p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    iput-object p4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    return v0
.end method


# virtual methods
.method onDequeuedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method onQueuedLocked()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-static {v0}, Lcom/android/server/wm/TaskSnapshotPersister;->access$600(Lcom/android/server/wm/TaskSnapshotPersister;)Ljava/util/ArrayDeque;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method write()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/server/wm/TaskSnapshotPersister;->access$700(Lcom/android/server/wm/TaskSnapshotPersister;I)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "WindowManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to create snapshot directory for user dir="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$800(Lcom/android/server/wm/TaskSnapshotPersister;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeProto()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->writeBuffer()Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/server/wm/TaskSnapshotPersister;->access$900(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    :cond_3
    return-void
.end method

.method writeBuffer()Z
    .locals 10

    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskSnapshot;->getSnapshot()Landroid/graphics/GraphicBuffer;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createHardwareBitmap(Landroid/graphics/GraphicBuffer;)Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "WindowManager"

    const-string v3, "Invalid task snapshot hw bitmap"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v5, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v3, v4, v5}, Lcom/android/server/wm/TaskSnapshotPersister;->getReducedResolutionBitmapFile(II)Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v4}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    nop

    move-object v4, v2

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    sget v6, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    mul-float/2addr v4, v6

    float-to-int v4, v4

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    int-to-float v6, v6

    sget v7, Lcom/android/server/wm/TaskSnapshotPersister;->REDUCED_SCALE:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v2, v4, v6, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v4

    :goto_0
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v8, 0x5f

    invoke-virtual {v4, v7, v8, v6}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v6}, Landroid/app/ActivityManager$TaskSnapshot;->isReducedResolution()Z

    move-result v6

    if-eqz v6, :cond_3

    return v5

    :cond_3
    iget-object v6, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v7, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v9, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v6, v7, v9}, Lcom/android/server/wm/TaskSnapshotPersister;->getBitmapFile(II)Ljava/io/File;

    move-result-object v6

    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    sget-object v9, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v2, v9, v8, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v5

    :catch_0
    move-exception v5

    const-string v7, "WindowManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to open "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " for persisting."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :catch_1
    move-exception v5

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for persisting."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_4
    :goto_1
    const-string v2, "WindowManager"

    const-string v3, "Failed to take snapshot for persisting."

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method writeProto()Z
    .locals 9

    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getOrientation()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->top:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isRealSnapshot()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getWindowingMode()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->getSystemUiVisibility()I

    move-result v1

    iput v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->systemUiVisibility:I

    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mSnapshot:Landroid/app/ActivityManager$TaskSnapshot;

    invoke-virtual {v1}, Landroid/app/ActivityManager$TaskSnapshot;->isTranslucent()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v3, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mTaskId:I

    iget v4, p0, Lcom/android/server/wm/TaskSnapshotPersister$StoreWriteQueueItem;->mUserId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskSnapshotPersister;->getProtoFile(II)Ljava/io/File;

    move-result-object v2

    new-instance v3, Lcom/android/internal/os/AtomicFile;

    invoke-direct {v3, v2}, Lcom/android/internal/os/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v3}, Lcom/android/internal/os/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v4, v5

    invoke-virtual {v4, v1}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v3, v4}, Lcom/android/internal/os/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v5, 0x1

    return v5

    :catch_0
    move-exception v5

    invoke-virtual {v3, v4}, Lcom/android/internal/os/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    const-string v6, "WindowManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to open "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " for persisting. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    return v6
.end method
