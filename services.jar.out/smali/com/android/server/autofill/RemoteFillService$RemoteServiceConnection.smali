.class Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RemoteServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/RemoteFillService;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/RemoteFillService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;-><init>(Lcom/android/server/autofill/RemoteFillService;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$200(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$300(Lcom/android/server/autofill/RemoteFillService;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {p2}, Landroid/service/autofill/IAutoFillService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/autofill/IAutoFillService;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/autofill/RemoteFillService;->access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    :try_start_0
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2

    nop

    :try_start_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$400(Lcom/android/server/autofill/RemoteFillService;)Landroid/service/autofill/IAutoFillService;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/service/autofill/IAutoFillService;->onConnectedStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NullPointer Exception calling onConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "RemoteFillService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception calling onConnected(): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    nop

    :goto_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0}, Lcom/android/server/autofill/RemoteFillService;->access$600(Lcom/android/server/autofill/RemoteFillService;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/autofill/RemoteFillService;->access$602(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)Lcom/android/server/autofill/RemoteFillService$PendingRequest;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v2, v0}, Lcom/android/server/autofill/RemoteFillService;->access$700(Lcom/android/server/autofill/RemoteFillService;Lcom/android/server/autofill/RemoteFillService$PendingRequest;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$802(Lcom/android/server/autofill/RemoteFillService;Z)Z

    return-void

    :catch_2
    move-exception v0

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    invoke-static {v1}, Lcom/android/server/autofill/RemoteFillService;->access$500(Lcom/android/server/autofill/RemoteFillService;)V

    return-void

    :cond_2
    :goto_2
    const-string v0, "RemoteFillService"

    const-string/jumbo v1, "onServiceConnected was dispatched after unbindService."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$302(Lcom/android/server/autofill/RemoteFillService;Z)Z

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFillService$RemoteServiceConnection;->this$0:Lcom/android/server/autofill/RemoteFillService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/autofill/RemoteFillService;->access$402(Lcom/android/server/autofill/RemoteFillService;Landroid/service/autofill/IAutoFillService;)Landroid/service/autofill/IAutoFillService;

    return-void
.end method
