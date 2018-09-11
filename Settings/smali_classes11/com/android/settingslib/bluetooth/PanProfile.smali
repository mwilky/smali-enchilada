.class public Lcom/android/settingslib/bluetooth/PanProfile;
.super Ljava/lang/Object;
.source "PanProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;
    }
.end annotation


# static fields
.field static final NAME:Ljava/lang/String; = "PAN"

.field private static final ORDINAL:I = 0x4

.field private static final TAG:Ljava/lang/String; = "PanProfile"

.field private static V:Z


# instance fields
.field private final mDeviceRoleMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/bluetooth/BluetoothDevice;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mService:Landroid/bluetooth/BluetoothPan;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "adapter"    # Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    .line 78
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 79
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance v1, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/bluetooth/PanProfile$PanServiceListener;-><init>(Lcom/android/settingslib/bluetooth/PanProfile;Lcom/android/settingslib/bluetooth/PanProfile$1;)V

    const/4 v2, 0x5

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 81
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 35
    sget-boolean v0, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/PanProfile;Landroid/bluetooth/BluetoothPan;)Landroid/bluetooth/BluetoothPan;
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PanProfile;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothPan;

    .line 35
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/settingslib/bluetooth/PanProfile;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settingslib/bluetooth/PanProfile;
    .param p1, "x1"    # Z

    .line 35
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 94
    .local v0, "sinks":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v0, :cond_1

    .line 95
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 96
    .local v2, "sink":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v3, v2}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 97
    .end local v2    # "sink":Landroid/bluetooth/BluetoothDevice;
    goto :goto_0

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothPan;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 103
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    return v0
.end method

.method protected finalize()V
    .locals 3

    .line 178
    sget-boolean v0, Lcom/android/settingslib/bluetooth/PanProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "PanProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-eqz v0, :cond_1

    .line 181
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 182
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    goto :goto_0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "t":Ljava/lang/Throwable;
    const-string v1, "PanProfile"

    const-string v2, "Error cleaning up PAN proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v0    # "t":Ljava/lang/Throwable;
    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 108
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    if-nez v0, :cond_0

    .line 109
    const/4 v0, 0x0

    return v0

    .line 111
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mService:Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothPan;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    return v0
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 1
    .param p1, "btClass"    # Landroid/bluetooth/BluetoothClass;

    .line 161
    sget v0, Lcom/android/settingslib/R$drawable;->ic_bt_network_pan:I

    return v0
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 135
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_pan_nap:I

    return v0

    .line 138
    :cond_0
    sget v0, Lcom/android/settingslib/R$string;->bluetooth_profile_pan:I

    return v0
.end method

.method public getOrdinal()I
    .locals 1

    .line 131
    const/4 v0, 0x4

    return v0
.end method

.method public getPreferred(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 119
    const/4 v0, -0x1

    return v0
.end method

.method public getProfileId()I
    .locals 1

    .line 74
    const/4 v0, 0x5

    return v0
.end method

.method public getSummaryResourceForDevice(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 143
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 144
    .local v0, "state":I
    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 156
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    return v1

    .line 149
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pan_nap_profile_summary_connected:I

    return v1

    .line 152
    :cond_1
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pan_user_profile_summary_connected:I

    return v1

    .line 146
    :cond_2
    sget v1, Lcom/android/settingslib/R$string;->bluetooth_pan_profile_summary_use_for:I

    return v1
.end method

.method public isAutoConnectable()Z
    .locals 1

    .line 88
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 84
    const/4 v0, 0x1

    return v0
.end method

.method isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 170
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1

    .line 173
    :cond_1
    return v1
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 115
    const/4 v0, 0x1

    return v0
.end method

.method public isProfileReady()Z
    .locals 1

    .line 69
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mIsProfileReady:Z

    return v0
.end method

.method setLocalRole(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 2
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "role"    # I

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/PanProfile;->mDeviceRoleMap:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    return-void
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 0
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;
    .param p2, "preferred"    # Z

    .line 124
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 127
    const-string v0, "PAN"

    return-object v0
.end method
