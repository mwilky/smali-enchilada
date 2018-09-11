.class Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;
.super Ljava/lang/Object;
.source "ServiceLifecycleDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/lifecycle/ServiceLifecycleDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DispatchRunnable"
.end annotation


# instance fields
.field final mEvent:Landroid/arch/lifecycle/Lifecycle$Event;

.field private final mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

.field private mWasExecuted:Z


# direct methods
.method constructor <init>(Landroid/arch/lifecycle/LifecycleRegistry;Landroid/arch/lifecycle/Lifecycle$Event;)V
    .locals 1
    .param p1, "registry"    # Landroid/arch/lifecycle/LifecycleRegistry;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "event"    # Landroid/arch/lifecycle/Lifecycle$Event;

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 97
    iput-object p1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    .line 98
    iput-object p2, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Landroid/arch/lifecycle/Lifecycle$Event;

    .line 99
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 103
    iget-boolean v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mRegistry:Landroid/arch/lifecycle/LifecycleRegistry;

    iget-object v1, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mEvent:Landroid/arch/lifecycle/Lifecycle$Event;

    invoke-virtual {v0, v1}, Landroid/arch/lifecycle/LifecycleRegistry;->handleLifecycleEvent(Landroid/arch/lifecycle/Lifecycle$Event;)V

    .line 105
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/lifecycle/ServiceLifecycleDispatcher$DispatchRunnable;->mWasExecuted:Z

    .line 107
    :cond_0
    return-void
.end method
