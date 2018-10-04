.class Landroid/companion/CompanionDeviceManager$CallbackProxy;
.super Landroid/companion/IFindDeviceCallback$Stub;
.source "CompanionDeviceManager.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/companion/CompanionDeviceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CallbackProxy"
.end annotation


# instance fields
.field private mCallback:Landroid/companion/CompanionDeviceManager$Callback;

.field private mHandler:Landroid/os/Handler;

.field final mLock:Ljava/lang/Object;

.field private mRequest:Landroid/companion/AssociationRequest;

.field final synthetic this$0:Landroid/companion/CompanionDeviceManager;


# direct methods
.method private constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-direct {p0}, Landroid/companion/IFindDeviceCallback$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    iput-object p3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    iput-object p4, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    invoke-static {p1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;Landroid/companion/CompanionDeviceManager$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/companion/CompanionDeviceManager$CallbackProxy;-><init>(Landroid/companion/CompanionDeviceManager;Landroid/companion/AssociationRequest;Landroid/companion/CompanionDeviceManager$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public static synthetic lambda$lockAndPost$0(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    move-object v0, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-interface {p1, v0, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method lockAndPost(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/companion/CompanionDeviceManager$Callback;",
            "TT;>;TT;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;

    invoke-direct {v2, p0, p1, p2}, Landroid/companion/-$$Lambda$CompanionDeviceManager$CallbackProxy$gkUVA3m3QgEEk8G84_kcBFARHvo;-><init>(Landroid/companion/CompanionDeviceManager$CallbackProxy;Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

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

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 4

    iget-object v0, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    if-eq p1, v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->access$300(Landroid/companion/CompanionDeviceManager;)Landroid/companion/ICompanionDeviceManager;

    move-result-object v1

    iget-object v2, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    iget-object v3, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v3}, Landroid/companion/CompanionDeviceManager;->access$200(Landroid/companion/CompanionDeviceManager;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, p0, v3}, Landroid/companion/ICompanionDeviceManager;->stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :goto_0
    iget-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->this$0:Landroid/companion/CompanionDeviceManager;

    invoke-static {v1}, Landroid/companion/CompanionDeviceManager;->access$100(Landroid/companion/CompanionDeviceManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/app/Application;->unregisterActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mCallback:Landroid/companion/CompanionDeviceManager$Callback;

    iput-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object v1, p0, Landroid/companion/CompanionDeviceManager$CallbackProxy;->mRequest:Landroid/companion/AssociationRequest;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onFailure(Ljava/lang/CharSequence;)V
    .locals 1

    sget-object v0, Landroid/companion/-$$Lambda$ZUPGnRMz08ZrG1ogNO-2O5Hso3I;->INSTANCE:Landroid/companion/-$$Lambda$ZUPGnRMz08ZrG1ogNO-2O5Hso3I;

    invoke-virtual {p0, v0, p1}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->lockAndPost(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Landroid/app/PendingIntent;)V
    .locals 2

    sget-object v0, Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;->INSTANCE:Landroid/companion/-$$Lambda$OThxsns9MAD5QsKURFQAFbt-3qc;

    invoke-virtual {p1}, Landroid/app/PendingIntent;->getIntentSender()Landroid/content/IntentSender;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/companion/CompanionDeviceManager$CallbackProxy;->lockAndPost(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    return-void
.end method
