.class final Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;
.super Ljava/lang/Object;
.source "OutputChooserDialog.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothCallbackHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method private constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/systemui/volume/OutputChooserDialog$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;-><init>(Lcom/android/systemui/volume/OutputChooserDialog;)V

    return-void
.end method


# virtual methods
.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onActiveDeviceChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->access$1100(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$1000(Lcom/android/systemui/volume/OutputChooserDialog;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->access$1200(Lcom/android/systemui/volume/OutputChooserDialog;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OutputChooserDialog;->access$1100(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$1000(Lcom/android/systemui/volume/OutputChooserDialog;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$1202(Lcom/android/systemui/volume/OutputChooserDialog;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$400(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    return-void
.end method

.method public onAudioModeChanged()V
    .locals 0

    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$400(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$BluetoothCallbackHandler;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$400(Lcom/android/systemui/volume/OutputChooserDialog;Z)V

    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    return-void
.end method
