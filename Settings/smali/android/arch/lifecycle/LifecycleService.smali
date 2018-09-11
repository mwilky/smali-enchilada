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

    .line 29
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 31
    new-instance v0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-direct {v0, p0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;-><init>(Landroid/arch/lifecycle/LifecycleOwner;)V

    iput-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    return-void
.end method


# virtual methods
.method public getLifecycle()Landroid/arch/lifecycle/Lifecycle;
    .locals 1

    .line 75
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->getLifecycle()Landroid/arch/lifecycle/Lifecycle;

    move-result-object v0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnBind()V

    .line 45
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 36
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnCreate()V

    .line 37
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 38
    return-void
.end method

.method public onDestroy()V
    .locals 1
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 69
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnDestroy()V

    .line 70
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 71
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 52
    iget-object v0, p0, Landroid/arch/lifecycle/LifecycleService;->mDispatcher:Landroid/arch/lifecycle/ServiceLifecycleDispatcher;

    invoke-virtual {v0}, Landroid/arch/lifecycle/ServiceLifecycleDispatcher;->onServicePreSuperOnStart()V

    .line 53
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 54
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    .line 63
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    return v0
.end method
