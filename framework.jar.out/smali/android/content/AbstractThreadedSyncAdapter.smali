.class public abstract Landroid/content/AbstractThreadedSyncAdapter;
.super Ljava/lang/Object;
.source "AbstractThreadedSyncAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/AbstractThreadedSyncAdapter$SyncThread;,
        Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;
    }
.end annotation


# static fields
.field private static final ENABLE_LOG:Z

.field public static final LOG_SYNC_DETAILS:I = 0xab7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "SyncAdapter"


# instance fields
.field private mAllowParallelSyncs:Z

.field private final mAutoInitialize:Z

.field private final mContext:Landroid/content/Context;

.field private final mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

.field private final mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mSyncThreadLock:Ljava/lang/Object;

.field private final mSyncThreads:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/accounts/Account;",
            "Landroid/content/AbstractThreadedSyncAdapter$SyncThread;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_0

    const-string v0, "SyncAdapter"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/AbstractThreadedSyncAdapter;-><init>(Landroid/content/Context;ZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ZZ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    iput-object p1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;-><init>(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/AbstractThreadedSyncAdapter$1;)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean p2, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    iput-boolean p3, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    return-void
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Landroid/content/AbstractThreadedSyncAdapter;->ENABLE_LOG:Z

    return v0
.end method

.method static synthetic access$1100(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    return v0
.end method

.method static synthetic access$1200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->handleOnUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V

    return-void
.end method

.method static synthetic access$1300(Landroid/content/AbstractThreadedSyncAdapter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Landroid/content/AbstractThreadedSyncAdapter;Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 1

    invoke-direct {p0, p1}, Landroid/content/AbstractThreadedSyncAdapter;->toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$400(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/HashMap;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/AbstractThreadedSyncAdapter;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAutoInitialize:Z

    return v0
.end method

.method static synthetic access$600(Landroid/content/AbstractThreadedSyncAdapter;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mNumSyncStarts:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private handleOnUnsyncableAccount(Landroid/content/ISyncAdapterUnsyncableAccountCallback;)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Landroid/content/AbstractThreadedSyncAdapter;->onUnsyncableAccount()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SyncAdapter"

    const-string v2, "Exception while calling onUnsyncableAccount, assuming \'true\'"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    :goto_0
    :try_start_1
    invoke-interface {p1, v0}, Landroid/content/ISyncAdapterUnsyncableAccountCallback;->onUnsyncableAccountDone(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "SyncAdapter"

    const-string v3, "Could not report result of onUnsyncableAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private toSyncKey(Landroid/accounts/Account;)Landroid/accounts/Account;
    .locals 1

    iget-boolean v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mAllowParallelSyncs:Z

    if-eqz v0, :cond_0

    return-object p1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public final getSyncAdapterBinder()Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mISyncAdapterImpl:Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;

    invoke-virtual {v0}, Landroid/content/AbstractThreadedSyncAdapter$ISyncAdapterImpl;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public abstract onPerformSync(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/ContentProviderClient;Landroid/content/SyncResult;)V
.end method

.method public onSecurityException(Landroid/accounts/Account;Landroid/os/Bundle;Ljava/lang/String;Landroid/content/SyncResult;)V
    .locals 0

    return-void
.end method

.method public onSyncCanceled()V
    .locals 3

    iget-object v0, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreadLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/content/AbstractThreadedSyncAdapter;->mSyncThreads:Ljava/util/HashMap;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/AbstractThreadedSyncAdapter$SyncThread;->interrupt()V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public onSyncCanceled(Ljava/lang/Thread;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public onUnsyncableAccount()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
