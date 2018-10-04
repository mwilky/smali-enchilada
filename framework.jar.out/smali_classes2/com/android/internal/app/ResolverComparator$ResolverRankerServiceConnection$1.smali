.class Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;
.super Landroid/service/resolver/IResolverRankerResult$Stub;
.source "ResolverComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;->this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    invoke-direct {p0}, Landroid/service/resolver/IResolverRankerResult$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/service/resolver/ResolverTarget;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;->this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v0, v0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v0}, Lcom/android/internal/app/ResolverComparator;->access$500(Lcom/android/internal/app/ResolverComparator;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x0

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection$1;->this$1:Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;

    iget-object v2, v2, Lcom/android/internal/app/ResolverComparator$ResolverRankerServiceConnection;->this$0:Lcom/android/internal/app/ResolverComparator;

    invoke-static {v2}, Lcom/android/internal/app/ResolverComparator;->access$000(Lcom/android/internal/app/ResolverComparator;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
