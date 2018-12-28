.class Lcom/android/systemui/volume/OutputChooserDialog$1;
.super Ljava/lang/Object;
.source "OutputChooserDialog.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OutputChooserDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OutputChooserDialog;


# direct methods
.method constructor <init>(Lcom/android/systemui/volume/OutputChooserDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OutputChooserDialog$1;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothProfile.ServiceListener / onServiceConnected / profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "  / proxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$1;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHeadset;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$102(Lcom/android/systemui/volume/OutputChooserDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/volume/OutputChooserDialog$1;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    invoke-static {v2}, Lcom/android/systemui/volume/OutputChooserDialog;->access$100(Lcom/android/systemui/volume/OutputChooserDialog;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Connected to non-headset bluetooth service. Not changing bluetooth headset."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onServiceDisconnected(I)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BluetoothProfile.ServiceListener / onServiceDisconnected / profile:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/volume/OutputChooserDialog$1;->this$0:Lcom/android/systemui/volume/OutputChooserDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OutputChooserDialog;->access$102(Lcom/android/systemui/volume/OutputChooserDialog;Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;

    invoke-static {}, Lcom/android/systemui/volume/OutputChooserDialog;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Lost BluetoothHeadset service. Removing all tracked devices."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
