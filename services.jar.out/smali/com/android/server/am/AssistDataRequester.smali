.class public Lcom/android/server/am/AssistDataRequester;
.super Landroid/app/IAssistDataReceiver$Stub;
.source "AssistDataRequester.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;
    }
.end annotation


# static fields
.field public static final KEY_RECEIVER_EXTRA_COUNT:Ljava/lang/String; = "count"

.field public static final KEY_RECEIVER_EXTRA_INDEX:Ljava/lang/String; = "index"


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mAssistData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private final mAssistScreenshot:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

.field private mCallbacksLock:Ljava/lang/Object;

.field private mCanceled:Z

.field private mContext:Landroid/content/Context;

.field private mPendingDataCount:I

.field private mPendingScreenshotCount:I

.field private mRequestScreenshotAppOps:I

.field private mRequestStructureAppOps:I

.field private mService:Landroid/app/IActivityManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V
    .locals 1

    invoke-direct {p0}, Landroid/app/IAssistDataReceiver$Stub;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    iput-object p5, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    iput-object p6, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    iput-object p2, p0, Lcom/android/server/am/AssistDataRequester;->mService:Landroid/app/IActivityManager;

    iput-object p1, p0, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput p7, p0, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    iput p8, p0, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    return-void
.end method

.method private dispatchAssistDataReceived(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string/jumbo v2, "receiverExtras"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_1

    const-string/jumbo v3, "index"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "count"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v3, p1, v0, v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistDataReceivedLocked(Landroid/os/Bundle;II)V

    return-void
.end method

.method private dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0, p1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistScreenshotReceivedLocked(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private flushPendingAssistData()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    invoke-direct {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    iget-object v2, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    :goto_1
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    invoke-direct {p0, v3}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private tryDispatchRequestComplete()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->onAssistRequestCompleted()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    iput v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingDataCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistData="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPendingScreenshotCount="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAssistScreenshot="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getPendingDataCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    return v0
.end method

.method public getPendingScreenshotCount()I
    .locals 1

    iget v0, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    return v0
.end method

.method public onHandleAssistData(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onHandleAssistScreenshot(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacksLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    invoke-direct {p0, p1}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public processPendingAssistData()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->flushPendingAssistData()V

    invoke-direct {p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void
.end method

.method public requestAssistData(Ljava/util/List;ZZZZILjava/lang/String;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;ZZZZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    move-object/from16 v8, p0

    move/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void

    :cond_0
    const/4 v11, 0x0

    move v1, v11

    :try_start_0
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mService:Landroid/app/IActivityManager;

    invoke-interface {v0}, Landroid/app/IActivityManager;->isAssistDataAllowedOnCurrentActivity()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    move v12, v1

    and-int v13, p4, v12

    const/4 v14, 0x1

    if-eqz p2, :cond_1

    if-eqz v12, :cond_1

    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    move v0, v14

    goto :goto_1

    :cond_1
    move v0, v11

    :goto_1
    and-int v15, p5, v0

    iput-boolean v11, v8, Lcom/android/server/am/AssistDataRequester;->mCanceled:Z

    iput v11, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    iput v11, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v7, 0x0

    if-eqz p2, :cond_a

    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, v8, Lcom/android/server/am/AssistDataRequester;->mRequestStructureAppOps:I

    invoke-virtual {v0, v1, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_8

    if-eqz v13, :cond_8

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v6

    move v0, v11

    :goto_2
    move v4, v0

    if-ge v4, v6, :cond_7

    move-object/from16 v3, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/IBinder;

    :try_start_1
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v1, "assist_with_context"

    invoke-static {v0, v1, v14}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "index"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "count"

    invoke-virtual {v0, v1, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mService:Landroid/app/IActivityManager;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v2, 0x1

    if-nez v4, :cond_2

    move/from16 v16, v14

    goto :goto_3

    :cond_2
    move/from16 v16, v11

    :goto_3
    if-nez v4, :cond_3

    move/from16 v17, v14

    goto :goto_4

    :cond_3
    move/from16 v17, v11

    :goto_4
    move-object v3, v8

    move/from16 v18, v4

    move-object v4, v0

    move/from16 v19, v6

    move/from16 v6, v16

    move-object v11, v7

    move/from16 v7, v17

    :try_start_2
    invoke-interface/range {v1 .. v7}, Landroid/app/IActivityManager;->requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z

    move-result v1

    if-eqz v1, :cond_4

    iget v1, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    add-int/2addr v1, v14

    iput v1, v8, Lcom/android/server/am/AssistDataRequester;->mPendingDataCount:I

    goto :goto_6

    :cond_4
    if-nez v18, :cond_6

    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v1}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {v8, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_5

    :cond_5
    iget-object v1, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    const/4 v1, 0x0

    nop

    move v15, v1

    goto :goto_8

    :cond_6
    :goto_6
    goto :goto_7

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    move/from16 v18, v4

    move/from16 v19, v6

    move-object v11, v7

    :goto_7
    add-int/lit8 v0, v18, 0x1

    move-object v7, v11

    move/from16 v6, v19

    const/4 v11, 0x0

    goto :goto_2

    :cond_7
    move-object v11, v7

    :goto_8
    goto :goto_a

    :cond_8
    move-object v11, v7

    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {v8, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistDataReceived(Landroid/os/Bundle;)V

    goto :goto_9

    :cond_9
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistData:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_9
    const/4 v15, 0x0

    goto :goto_a

    :cond_a
    move-object v11, v7

    :goto_a
    if-eqz p3, :cond_d

    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v2, v8, Lcom/android/server/am/AssistDataRequester;->mRequestScreenshotAppOps:I

    invoke-virtual {v0, v2, v9, v10}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_b

    if-eqz v15, :cond_b

    :try_start_3
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mContext:Landroid/content/Context;

    const-string v2, "assist_with_screen"

    invoke-static {v0, v2, v14}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    iget v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    add-int/2addr v0, v14

    iput v0, v8, Lcom/android/server/am/AssistDataRequester;->mPendingScreenshotCount:I

    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v0, v8}, Landroid/view/IWindowManager;->requestAssistScreenshot(Landroid/app/IAssistDataReceiver;)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_b

    :catch_3
    move-exception v0

    :goto_b
    goto :goto_c

    :cond_b
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mCallbacks:Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;

    invoke-interface {v0}, Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;->canHandleReceivedAssistDataLocked()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {v8, v11}, Lcom/android/server/am/AssistDataRequester;->dispatchAssistScreenshotReceived(Landroid/graphics/Bitmap;)V

    goto :goto_c

    :cond_c
    iget-object v0, v8, Lcom/android/server/am/AssistDataRequester;->mAssistScreenshot:Ljava/util/ArrayList;

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    :goto_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/AssistDataRequester;->tryDispatchRequestComplete()V

    return-void
.end method
