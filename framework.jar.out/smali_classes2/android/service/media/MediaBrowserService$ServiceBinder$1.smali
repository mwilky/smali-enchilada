.class Landroid/service/media/MediaBrowserService$ServiceBinder$1;
.super Ljava/lang/Object;
.source "MediaBrowserService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/service/media/MediaBrowserService$ServiceBinder;->connect(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/media/IMediaBrowserServiceCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

.field final synthetic val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

.field final synthetic val$pid:I

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$rootHints:Landroid/os/Bundle;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Landroid/service/media/MediaBrowserService$ServiceBinder;Landroid/service/media/IMediaBrowserServiceCallbacks;Ljava/lang/String;IILandroid/os/Bundle;)V
    .locals 0

    iput-object p1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iput-object p2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object p3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iput p4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pid:I

    iput p5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    iput-object p6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    iget-object v0, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v0}, Landroid/service/media/IMediaBrowserServiceCallbacks;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v1, v1, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v1}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/service/media/MediaBrowserService$ConnectionRecord;-><init>(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$1;)V

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iput-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pkg:Ljava/lang/String;

    iget v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pid:I

    iput v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->pid:I

    iget v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    iput v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->uid:I

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    iput-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->rootHints:Landroid/os/Bundle;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iput-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v2, v1}, Landroid/service/media/MediaBrowserService;->access$402(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    iget v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$uid:I

    iget-object v6, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$rootHints:Landroid/os/Bundle;

    invoke-virtual {v2, v4, v5, v6}, Landroid/service/media/MediaBrowserService;->onGetRoot(Ljava/lang/String;ILandroid/os/Bundle;)Landroid/service/media/MediaBrowserService$BrowserRoot;

    move-result-object v2

    iput-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v2, v3}, Landroid/service/media/MediaBrowserService;->access$402(Landroid/service/media/MediaBrowserService;Landroid/service/media/MediaBrowserService$ConnectionRecord;)Landroid/service/media/MediaBrowserService$ConnectionRecord;

    iget-object v2, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    if-nez v2, :cond_0

    const-string v2, "MediaBrowserService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No root for client "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from service "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    invoke-interface {v2}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnectFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MediaBrowserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnectFailed() failed. Ignoring. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v2}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v2, v2, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$callbacks:Landroid/service/media/IMediaBrowserServiceCallbacks;

    iget-object v3, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v3}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getRootId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v4, v4, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    iget-object v4, v4, Landroid/service/media/MediaBrowserService;->mSession:Landroid/media/session/MediaSession$Token;

    iget-object v5, v1, Landroid/service/media/MediaBrowserService$ConnectionRecord;->root:Landroid/service/media/MediaBrowserService$BrowserRoot;

    invoke-virtual {v5}, Landroid/service/media/MediaBrowserService$BrowserRoot;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Landroid/service/media/IMediaBrowserServiceCallbacks;->onConnect(Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "MediaBrowserService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Calling onConnect() failed. Dropping client. pkg="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->val$pkg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/service/media/MediaBrowserService$ServiceBinder$1;->this$1:Landroid/service/media/MediaBrowserService$ServiceBinder;

    iget-object v3, v3, Landroid/service/media/MediaBrowserService$ServiceBinder;->this$0:Landroid/service/media/MediaBrowserService;

    invoke-static {v3}, Landroid/service/media/MediaBrowserService;->access$000(Landroid/service/media/MediaBrowserService;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method
