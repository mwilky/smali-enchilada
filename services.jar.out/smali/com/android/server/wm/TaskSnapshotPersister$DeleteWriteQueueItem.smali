.class Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;
.super Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;
.source "TaskSnapshotPersister.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/TaskSnapshotPersister;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeleteWriteQueueItem"
.end annotation


# instance fields
.field private final mTaskId:I

.field private final mUserId:I

.field final synthetic this$0:Lcom/android/server/wm/TaskSnapshotPersister;


# direct methods
.method constructor <init>(Lcom/android/server/wm/TaskSnapshotPersister;II)V
    .locals 1
    .param p2, "taskId"    # I
    .param p3, "userId"    # I

    .line 394
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotPersister$WriteQueueItem;-><init>(Lcom/android/server/wm/TaskSnapshotPersister;Lcom/android/server/wm/TaskSnapshotPersister$1;)V

    .line 395
    iput p2, p0, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;->mTaskId:I

    .line 396
    iput p3, p0, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;->mUserId:I

    .line 397
    return-void
.end method


# virtual methods
.method write()V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;->this$0:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v1, p0, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/TaskSnapshotPersister$DeleteWriteQueueItem;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotPersister;->access$900(Lcom/android/server/wm/TaskSnapshotPersister;II)V

    .line 402
    return-void
.end method
