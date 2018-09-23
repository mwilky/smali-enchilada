.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "TextClassificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/textclassifier/TextClassificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private final mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/textclassifier/TextClassificationManagerService;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService;-><init>(Landroid/content/Context;Lcom/android/server/textclassifier/TextClassificationManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    return-void
.end method

.method private processAnyPendingWork(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$200(Lcom/android/server/textclassifier/TextClassificationManagerService;I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->access$300(Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;)Z

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
.method public onStart()V
    .locals 3

    :try_start_0
    const-string/jumbo v0, "textclassification"

    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "TextClassificationManagerService"

    const-string v2, "Could not start the TextClassificationManagerService."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onStartUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->processAnyPendingWork(I)V

    return-void
.end method

.method public onStopUser(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {v0}, Lcom/android/server/textclassifier/TextClassificationManagerService;->access$100(Lcom/android/server/textclassifier/TextClassificationManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->peekUserStateLocked(I)Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState;->mConnection:Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;

    invoke-virtual {v2}, Lcom/android/server/textclassifier/TextClassificationManagerService$UserState$TextClassifierServiceConnection;->cleanupService()V

    iget-object v2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->mManagerService:Lcom/android/server/textclassifier/TextClassificationManagerService;

    iget-object v2, v2, Lcom/android/server/textclassifier/TextClassificationManagerService;->mUserStates:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onUnlockUser(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;->processAnyPendingWork(I)V

    return-void
.end method
