.class Landroid/net/wifi/WifiManager$SoftApCallbackProxy;
.super Landroid/net/wifi/ISoftApCallback$Stub;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SoftApCallbackProxy"
.end annotation


# instance fields
.field private final mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Landroid/os/Looper;Landroid/net/wifi/WifiManager$SoftApCallback;)V
    .locals 1

    invoke-direct {p0}, Landroid/net/wifi/ISoftApCallback$Stub;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mHandler:Landroid/os/Handler;

    iput-object p2, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    return-void
.end method

.method public static synthetic lambda$onNumClientsChanged$1(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1}, Landroid/net/wifi/WifiManager$SoftApCallback;->onNumClientsChanged(I)V

    return-void
.end method

.method public static synthetic lambda$onStaConnected$2(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaConnected(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onStaDisconnected$3(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStaDisconnected(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$onStateChanged$0(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;II)V
    .locals 1

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mCallback:Landroid/net/wifi/WifiManager$SoftApCallback;

    invoke-interface {v0, p1, p2}, Landroid/net/wifi/WifiManager$SoftApCallback;->onStateChanged(II)V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftApCallbackProxy: onNumClientsChanged: numClients="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$f44R8L0UcqgnIaD5lXMmeuRHCWI;

    invoke-direct {v1, p0, p1}, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$f44R8L0UcqgnIaD5lXMmeuRHCWI;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftApCallbackProxy: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]onStaConnected Macaddr ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vo4E4HQhX8ezRZP1e1kxdx6MvpE;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vo4E4HQhX8ezRZP1e1kxdx6MvpE;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftApCallbackProxy: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "]onStaDisconnected Macaddr ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$X5LJgdNUCXHctJ7m4-CGDjDEfkU;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$X5LJgdNUCXHctJ7m4-CGDjDEfkU;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStateChanged(II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "WifiManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SoftApCallbackProxy: onStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", failureReason="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiManager$SoftApCallbackProxy;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;

    invoke-direct {v1, p0, p1, p2}, Landroid/net/wifi/-$$Lambda$WifiManager$SoftApCallbackProxy$vmSW5veUpC52oRINBy419US5snk;-><init>(Landroid/net/wifi/WifiManager$SoftApCallbackProxy;II)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
