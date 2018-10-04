.class Landroid/content/AbstractThreadedSyncAdapter$SyncThread;
.super Ljava/lang/Thread;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/AbstractThreadedSyncAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncThread"
.end annotation


# instance fields
.field private final mAccount:Landroid/accounts/Account;

.field private final mAuthority:Ljava/lang/String;

.field private final mExtras:Landroid/os/Bundle;

.field private final mSyncContext:Landroid/content/SyncContext;

.field private final mThreadsKey:Landroid/accounts/Account;

.field final synthetic this$0:Landroid/content/AbstractThreadedSyncAdapter;


# direct methods
.method private constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    iput-object p4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iput-object p6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    invoke-static {p1, p5}, Landroid/content/AbstractThreadedSyncAdapter;->access$200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;Landroid/content/AbstractThreadedSyncAdapter$1;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Ljava/lang/String;Landroid/content/SyncContext;Ljava/lang/String;Landroid/accounts/Account;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$1000(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/accounts/Account;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method static synthetic access$800(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Landroid/content/SyncContext;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    return-object v0
.end method

.method static synthetic access$900(Landroid/content/AbstractThreadedSyncAdapter$SyncThread;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method private isCanceled()Z
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 11

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SyncAdapter"

    const-string v1, "Thread started"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    const-wide/16 v1, 0x80

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    new-instance v0, Landroid/content/SyncResult;

    invoke-direct {v0}, Landroid/content/SyncResult;-><init>()V

    const/4 v3, 0x0

    const/4 v9, 0x1

    :try_start_0
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "SyncAdapter"

    const-string v5, "Already canceled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :cond_1
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    :cond_2
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_3
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_1
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :try_start_3
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "SyncAdapter"

    const-string v5, "Calling onPerformSync..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v4}, Landroid/content/AbstractThreadedSyncAdapter;->access$1300(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    move-result-object v4
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    move-object v10, v4

    if-eqz v10, :cond_7

    :try_start_4
    iget-object v3, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v4, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    move-object v7, v10

    move-object v8, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/AbstractThreadedSyncAdapter;->onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V

    goto :goto_0

    :catchall_1
    move-exception v4

    move-object v3, v10

    goto/16 :goto_4

    :catch_0
    move-exception v4

    move-object v3, v10

    goto :goto_1

    :catch_1
    move-exception v4

    move-object v3, v10

    goto :goto_2

    :cond_7
    iput-boolean v9, v0, Landroid/content/SyncResult;->databaseError:Z

    :goto_0
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "SyncAdapter"

    const-string/jumbo v4, "onPerformSync done"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Error; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_8
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v10, :cond_9

    invoke-virtual {v10}, Landroid/content/ContentProviderClient;->release()Z

    :cond_9
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_a
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    :try_start_5
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    move-object v3, v10

    goto :goto_3

    :catchall_2
    move-exception v1

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1

    :catchall_3
    move-exception v4

    goto :goto_4

    :catch_2
    move-exception v4

    :goto_1
    :try_start_7
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v5

    if-eqz v5, :cond_c

    const-string v5, "SyncAdapter"

    const-string v6, "caught exception"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_c
    throw v4

    :catch_3
    move-exception v4

    :goto_2
    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v5, "SyncAdapter"

    const-string v6, "SecurityException"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    iget-object v6, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAccount:Landroid/accounts/Account;

    iget-object v7, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mExtras:Landroid/os/Bundle;

    iget-object v8, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mAuthority:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8, v0}, Landroid/content/AbstractThreadedSyncAdapter;->onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V

    iput-boolean v9, v0, Landroid/content/SyncResult;->databaseError:Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_e

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    :cond_e
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_f

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_f
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    :try_start_8
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_10

    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    :goto_3
    return-void

    :catchall_4
    move-exception v1

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    throw v1

    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    if-eqz v3, :cond_11

    invoke-virtual {v3}, Landroid/content/ContentProviderClient;->release()Z

    :cond_11
    invoke-direct {p0}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_12

    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mSyncContext:Landroid/content/SyncContext;

    invoke-virtual {v1, v0}, Landroid/content/SyncContext;->onFinished(Landroid/content/SyncResult;)V

    :cond_12
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v1}, Landroid/content/AbstractThreadedSyncAdapter;->access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_a
    iget-object v2, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->this$0:Landroid/content/AbstractThreadedSyncAdapter;

    invoke-static {v2}, Landroid/content/AbstractThreadedSyncAdapter;->access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v5, p0, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->mThreadsKey:Landroid/accounts/Account;

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    invoke-static {}, Landroid/content/AbstractThreadedSyncAdapter;->access$100()Z

    move-result v1

    if-eqz v1, :cond_13

    const-string v1, "SyncAdapter"

    const-string v2, "Thread finished"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    throw v4

    :catchall_5
    move-exception v2

    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    throw v2
.end method
