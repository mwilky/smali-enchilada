.class public Landroid/bluetooth/BluetoothPbap;
.super Ljava/lang/Object;
.source "BluetoothPbap.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothPbap$ServiceListener;
    }
.end annotation


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

.field private static final DBG:Z = false

.field public static final RESULT_CANCELED:I = 0x2

.field public static final RESULT_FAILURE:I = 0x0

.field public static final RESULT_SUCCESS:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BluetoothPbap"


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothPbap;

.field private mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothPbap$ServiceListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/bluetooth/BluetoothPbap$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothPbap$1;-><init>(Landroid/bluetooth/BluetoothPbap;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v0, Landroid/bluetooth/BluetoothPbap$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothPbap$2;-><init>(Landroid/bluetooth/BluetoothPbap;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothPbap"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbap;->doBind()Z

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothPbap;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    return-object v0
.end method

.method static synthetic access$202(Landroid/bluetooth/BluetoothPbap;Landroid/bluetooth/IBluetoothPbap;)Landroid/bluetooth/IBluetoothPbap;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    return-object p1
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothPbap;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothPbap;)Landroid/bluetooth/BluetoothPbap$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothPbap"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_4
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    iget-object v2, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_5
    const-string v4, "BluetoothPbap"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    iput-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mServiceListener:Landroid/bluetooth/BluetoothPbap$ServiceListener;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v2

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const-string v0, "disconnect()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "BluetoothPbap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbap;->disconnect(Landroid/bluetooth/BluetoothDevice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    const-string v3, "BluetoothPbap"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method doBind()Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothPbap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothPbap;->mConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Landroid/bluetooth/BluetoothPbap;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    return v2

    :cond_1
    :goto_0
    const-string v3, "BluetoothPbap"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Pbap Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothPbap;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "getConnectedDevices()"

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    if-nez v0, :cond_0

    const-string v1, "BluetoothPbap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothPbap;->getConnectedDevices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "BluetoothPbap"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getConnectionState: device="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "BluetoothPbap"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothPbap"

    invoke-virtual {v2}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDevicesMatchingConnectionStates: states="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothPbap;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothPbap;->mService:Landroid/bluetooth/IBluetoothPbap;

    if-nez v0, :cond_0

    const-string v1, "BluetoothPbap"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothPbap;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "BluetoothPbap"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public isConnected(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothPbap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
