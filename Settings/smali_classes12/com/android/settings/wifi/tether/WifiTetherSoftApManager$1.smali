.class Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;
.super Ljava/lang/Object;
.source "WifiTetherSoftApManager.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 0

    return-void
.end method

.method public onStaConnected(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;->onNumClientsChanged(I)V

    return-void
.end method

.method public onStaDisconnected(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;->onNumClientsChanged(I)V

    return-void
.end method

.method public onStateChanged(II)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;

    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;->access$000(Lcom/android/settings/wifi/tether/WifiTetherSoftApManager;)Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;->onStateChanged(II)V

    return-void
.end method
