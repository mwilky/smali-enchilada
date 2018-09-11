.class Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "OPBluetoothDiscoverablePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    .line 91
    iput-object p1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 95
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x0

    const v3, -0x5b36f014

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    .line 97
    :cond_2
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 99
    .local v0, "blueState":I
    packed-switch v0, :pswitch_data_0

    .end local v0    # "blueState":I
    goto :goto_2

    .line 106
    .restart local v0    # "blueState":I
    :pswitch_0
    goto :goto_2

    .line 103
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    iget-object v1, v1, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 104
    goto :goto_2

    .line 101
    :pswitch_2
    goto :goto_2

    .line 108
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;

    iget-object v1, v1, Lcom/android/settings/bluetooth/OPBluetoothDiscoverablePreferenceController;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 113
    .end local v0    # "blueState":I
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
