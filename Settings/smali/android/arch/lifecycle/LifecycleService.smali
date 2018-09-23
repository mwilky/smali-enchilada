.class public Landroid/arch/lifecycle/LifecycleService;
.super Landroid/app/Service;
.source "LifecycleService.java"

# interfaces
.implements Landroid/arch/lifecycle/LifecycleOwner;


# instance fields
.field private final mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
