.class Landroid/telecom/RemoteConnectionService$2;
.super Ljava/lang/Object;
.source "RemoteConnectionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telecom/RemoteConnectionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/telecom/RemoteConnectionService;


# direct methods
.method constructor <init>(Landroid/telecom/RemoteConnectionService;)V
    .locals 0

    iput-object p1, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConnection;

    invoke-virtual {v1}, Landroid/telecom/RemoteConnection;->setDestroyed()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/RemoteConference;

    invoke-virtual {v1}, Landroid/telecom/RemoteConference;->setDestroyed()V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$300(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$700(Landroid/telecom/RemoteConnectionService;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$200(Landroid/telecom/RemoteConnectionService;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v0}, Landroid/telecom/RemoteConnectionService;->access$600(Landroid/telecom/RemoteConnectionService;)Lcom/android/internal/telecom/IConnectionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telecom/IConnectionService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/telecom/RemoteConnectionService$2;->this$0:Landroid/telecom/RemoteConnectionService;

    invoke-static {v1}, Landroid/telecom/RemoteConnectionService;->access$1100(Landroid/telecom/RemoteConnectionService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
