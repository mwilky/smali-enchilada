.class Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;
.super Landroid/os/AsyncTask;
.source "AutofillManagerServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerServiceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PruneTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;Lcom/android/server/autofill/AutofillManagerServiceImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;-><init>(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 9

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2, v1}, Landroid/util/SparseArray;-><init>(I)V

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_0

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v5}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/autofill/Session;

    iget v6, v5, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v5}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move v0, v1

    move-object v1, v2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    move v4, v0

    move v0, v3

    :goto_1
    if-ge v0, v4, :cond_2

    :try_start_1
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/IBinder;

    invoke-interface {v2, v5}, Landroid/app/IActivityManager;->getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->removeAt(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v4, v4, -0x1

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v5

    const-string v6, "AutofillManagerServiceImpl"

    const-string v7, "Cannot figure out if activity is finished"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$100(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    nop

    :goto_3
    move v0, v3

    if-ge v0, v4, :cond_6

    :try_start_2
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerServiceImpl$PruneTask;->this$0:Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-static {v3}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->access$200(Lcom/android/server/autofill/AutofillManagerServiceImpl;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/Session;

    if-eqz v3, :cond_5

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v7

    if-ne v6, v7, :cond_5

    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->isSavingLocked()Z

    move-result v6

    if-eqz v6, :cond_3

    sget-boolean v6, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v6, :cond_5

    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " is saving"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_3
    sget-boolean v6, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v6, :cond_4

    const-string v6, "AutofillManagerServiceImpl"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Prune session "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v3, Lcom/android/server/autofill/Session;->id:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " ("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->getActivityTokenLocked()Landroid/os/IBinder;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {v3}, Lcom/android/server/autofill/Session;->removeSelfLocked()V

    :cond_5
    :goto_4
    add-int/lit8 v3, v0, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_6
    monitor-exit v5

    const/4 v0, 0x0

    return-object v0

    :goto_5
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method
