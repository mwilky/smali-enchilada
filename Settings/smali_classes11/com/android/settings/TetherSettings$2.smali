.class Lcom/android/settings/TetherSettings$2;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/TetherSettings;

    .line 477
    iput-object p1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 479
    iget-object v0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 480
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 484
    iget-object v0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    iget-object v1, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v1}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$802(Lcom/android/settings/TetherSettings;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;

    .line 485
    iget-object v0, p0, Lcom/android/settings/TetherSettings$2;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$700(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 486
    return-void
.end method
