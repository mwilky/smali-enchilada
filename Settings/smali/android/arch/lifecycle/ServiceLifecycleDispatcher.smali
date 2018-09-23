.class public Landroid/arch/lifecycle/ServiceLifecycleDispatcher;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
    }
.end annotation


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

.field private final mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;


# direct methods
.method public constructor <init>(Landroid/arch/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroid/arch/lifecycle/LifecycleOwner;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, p1}, Landroid/arch/lifecycle/LifecycleRegistry;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 2

    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->run()V

    :cond_0
    new-instance v0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    iget-object v1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    invoke-direct {v0, v1, p1}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;-><init>(Landroid/arch/lifecycle/LifecycleRegistry;Landroid/arch/lifecycle/Lifecycle$Event;)V

    iput-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mLastDispatchRunnable:Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    return-object v0
.end method

.method public onServicePreSuperOnBind()V
    .locals 1

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnCreate()V
    .locals 1

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_CREATE:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnDestroy()V
    .locals 1

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_STOP:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method

.method public onServicePreSuperOnStart()V
    .locals 1

    sget-object v0, Landroid/arch/lifecycle/Lifecycle$Event;->ON_START:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-direct {p0, v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->postDispatchRunnable(Landroid/arch/lifecycle/Lifecycle$Event;)V

    return-void
.end method
