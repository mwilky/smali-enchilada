.class Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceNamePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object v1, v1, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->updatePreferenceState(Landroid/support/v7/preference/Preference;)V

    goto :goto_0

    :cond_0
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController$1;->this$0:Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;

    iget-object v2, v2, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Lcom/android/settings/bluetooth/BluetoothDeviceNamePreferenceController;->updatePreferenceState(Landroid/support/v7/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method
