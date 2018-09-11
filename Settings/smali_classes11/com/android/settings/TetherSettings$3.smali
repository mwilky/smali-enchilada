.class Lcom/android/settings/TetherSettings$3;
.super Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;
.source "TetherSettings.java"


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

    .line 517
    iput-object p1, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Landroid/bluetooth/IBluetoothStateChangeCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothStateChange(Z)V
    .locals 3
    .param p1, "up"    # Z

    .line 519
    const-string v0, "TetheringSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "state:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    if-eqz p1, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->access$900(Lcom/android/settings/TetherSettings;)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/TetherSettings$3;->this$0:Lcom/android/settings/TetherSettings;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/TetherSettings;->access$1000(Lcom/android/settings/TetherSettings;Z)V

    .line 525
    :cond_0
    return-void
.end method
