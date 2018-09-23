.class Lcom/android/server/am/ClientLifecycleManager;
.super Ljava/lang/Object;
.source "ClientLifecycleManager.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 1

    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    return-object v0
.end method

.method private static transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;
    .locals 1

    invoke-static {p0, p1}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    return-object v0
.end method


# virtual methods
.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0, p2}, Lcom/android/server/am/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/android/server/am/ClientLifecycleManager;->transactionWithState(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lcom/android/server/am/ClientLifecycleManager;->transactionWithCallback(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ClientTransactionItem;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    return-void
.end method

.method scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->getClient()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->schedule()V

    instance-of v1, v0, Landroid/os/Binder;

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/app/servertransaction/ClientTransaction;->recycle()V

    :cond_0
    return-void
.end method
