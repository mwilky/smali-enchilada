.class final Landroid/app/Instrumentation$ActivityGoing;
.super Ljava/lang/Object;
.source "Instrumentation.java"

# interfaces
.implements Landroid/os/MessageQueue$IdleHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Instrumentation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ActivityGoing"
.end annotation


# instance fields
.field private final mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

.field final synthetic this$0:Landroid/app/Instrumentation;


# direct methods
.method public constructor <init>(Landroid/app/Instrumentation;Landroid/app/Instrumentation$ActivityWaiter;)V
    .locals 0
    .param p2, "waiter"    # Landroid/app/Instrumentation$ActivityWaiter;

    .line 2386
    iput-object p1, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2387
    iput-object p2, p0, Landroid/app/Instrumentation$ActivityGoing;->mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

    .line 2388
    return-void
.end method


# virtual methods
.method public final queueIdle()Z
    .locals 3

    .line 2391
    iget-object v0, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-static {v0}, Landroid/app/Instrumentation;->access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2392
    :try_start_0
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-static {v1}, Landroid/app/Instrumentation;->access$300(Landroid/app/Instrumentation;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Landroid/app/Instrumentation$ActivityGoing;->mWaiter:Landroid/app/Instrumentation$ActivityWaiter;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2393
    iget-object v1, p0, Landroid/app/Instrumentation$ActivityGoing;->this$0:Landroid/app/Instrumentation;

    invoke-static {v1}, Landroid/app/Instrumentation;->access$200(Landroid/app/Instrumentation;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 2394
    monitor-exit v0

    .line 2395
    const/4 v0, 0x0

    return v0

    .line 2394
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
