.class Landroid/net/wifi/WifiScanner$ServiceHandler;
.super Landroid/os/Handler;
.source "WifiScanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ServiceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiScanner;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiScanner;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x11002

    if-eq v0, v1, :cond_2

    const v1, 0x11004

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->access$100(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    return-void

    :sswitch_0
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiScanner$PnoScanListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanResults;

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanResults;->getResults()[Landroid/net/wifi/ScanResult;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/WifiScanner$PnoScanListener;->onPnoNetworkFound([Landroid/net/wifi/ScanResult;)V

    return-void

    :sswitch_1
    iget-object v1, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1, v2}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    :sswitch_2
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/ScanResult;

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiScanner$ScanListener;

    invoke-interface {v2, v1}, Landroid/net/wifi/WifiScanner$ScanListener;->onFullResult(Landroid/net/wifi/ScanResult;)V

    return-void

    :sswitch_3
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiScanner$OperationResult;

    move-object v2, v0

    check-cast v2, Landroid/net/wifi/WifiScanner$ActionListener;

    iget v3, v1, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    iget-object v4, v1, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Landroid/net/wifi/WifiScanner$ActionListener;->onFailure(ILjava/lang/String;)V

    iget-object v2, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v2, v3}, Landroid/net/wifi/WifiScanner;->access$200(Landroid/net/wifi/WifiScanner;I)Ljava/lang/Object;

    goto :goto_0

    :sswitch_4
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiScanner$ActionListener;

    invoke-interface {v1}, Landroid/net/wifi/WifiScanner$ActionListener;->onSuccess()V

    nop

    :goto_0
    return-void

    :sswitch_5
    move-object v1, v0

    check-cast v1, Landroid/net/wifi/WifiScanner$ScanListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WifiScanner$ParcelableScanData;

    invoke-virtual {v2}, Landroid/net/wifi/WifiScanner$ParcelableScanData;->getResults()[Landroid/net/wifi/WifiScanner$ScanData;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/net/wifi/WifiScanner$ScanListener;->onResults([Landroid/net/wifi/WifiScanner$ScanData;)V

    return-void

    :cond_1
    const-string v0, "WifiScanner"

    const-string v1, "Channel connection lost"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/wifi/WifiScanner$ServiceHandler;->this$0:Landroid/net/wifi/WifiScanner;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/net/wifi/WifiScanner;->access$002(Landroid/net/wifi/WifiScanner;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {p0}, Landroid/net/wifi/WifiScanner$ServiceHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quit()V

    return-void

    :cond_2
    return-void

    :sswitch_data_0
    .sparse-switch
        0x27005 -> :sswitch_5
        0x27011 -> :sswitch_4
        0x27012 -> :sswitch_3
        0x27014 -> :sswitch_2
        0x27017 -> :sswitch_1
        0x2701a -> :sswitch_0
    .end sparse-switch
.end method
