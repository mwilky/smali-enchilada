.class public final Landroid/bluetooth/BluetoothHidHost;
.super Ljava/lang/Object;
.source "BluetoothHidHost.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_HANDSHAKE:Ljava/lang/String; = "android.bluetooth.input.profile.action.HANDSHAKE"

.field public static final ACTION_IDLE_TIME_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.IDLE_TIME_CHANGED"

.field public static final ACTION_PROTOCOL_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.input.profile.action.PROTOCOL_MODE_CHANGED"

.field public static final ACTION_REPORT:Ljava/lang/String; = "android.bluetooth.input.profile.action.REPORT"

.field public static final ACTION_VIRTUAL_UNPLUG_STATUS:Ljava/lang/String; = "android.bluetooth.input.profile.action.VIRTUAL_UNPLUG_STATUS"

.field private static final DBG:Z = true

.field public static final EXTRA_IDLE_TIME:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.IDLE_TIME"

.field public static final EXTRA_PROTOCOL_MODE:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.PROTOCOL_MODE"

.field public static final EXTRA_REPORT:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT"

.field public static final EXTRA_REPORT_BUFFER_SIZE:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT_BUFFER_SIZE"

.field public static final EXTRA_REPORT_ID:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT_ID"

.field public static final EXTRA_REPORT_TYPE:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.REPORT_TYPE"

.field public static final EXTRA_STATUS:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.STATUS"

.field public static final EXTRA_VIRTUAL_UNPLUG_STATUS:Ljava/lang/String; = "android.bluetooth.BluetoothHidHost.extra.VIRTUAL_UNPLUG_STATUS"

.field public static final INPUT_CONNECT_FAILED_ALREADY_CONNECTED:I = 0x1389

.field public static final INPUT_CONNECT_FAILED_ATTEMPT_FAILED:I = 0x138a

.field public static final INPUT_DISCONNECT_FAILED_NOT_CONNECTED:I = 0x1388

.field public static final INPUT_OPERATION_GENERIC_FAILURE:I = 0x138b

.field public static final INPUT_OPERATION_SUCCESS:I = 0x138c

.field public static final PROTOCOL_BOOT_MODE:I = 0x1

.field public static final PROTOCOL_REPORT_MODE:I = 0x0

.field public static final PROTOCOL_UNSUPPORTED_MODE:I = 0xff

.field public static final REPORT_TYPE_FEATURE:B = 0x3t

.field public static final REPORT_TYPE_INPUT:B = 0x1t

.field public static final REPORT_TYPE_OUTPUT:B = 0x2t

.field private static final TAG:Ljava/lang/String; = "BluetoothHidHost"

.field private static final VDBG:Z = false

.field public static final VIRTUAL_UNPLUG_STATUS_FAIL:I = 0x1

.field public static final VIRTUAL_UNPLUG_STATUS_SUCCESS:I


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private volatile mService:Landroid/bluetooth/IBluetoothHidHost;

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/bluetooth/BluetoothHidHost$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHidHost$1;-><init>(Landroid/bluetooth/BluetoothHidHost;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v0, Landroid/bluetooth/BluetoothHidHost$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothHidHost$2;-><init>(Landroid/bluetooth/BluetoothHidHost;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidHost;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothHidHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothHidHost"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothHidHost;->doBind()Z

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothHidHost;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/IBluetoothHidHost;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothHidHost;Landroid/bluetooth/IBluetoothHidHost;)Landroid/bluetooth/IBluetoothHidHost;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothHidHost;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothHidHost"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method close()V
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothHidHost"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mConnection:Landroid/content/ServiceConnection;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    :try_start_2
    iput-object v3, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    iget-object v2, p0, Landroid/bluetooth/BluetoothHidHost;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHidHost;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v2, v4}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v2

    :try_start_3
    const-string v4, "BluetoothHidHost"

    const-string v5, ""

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iput-object v3, p0, Landroid/bluetooth/BluetoothHidHost;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-void

    :catchall_0
    move-exception v2

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v2
.end method

.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "connect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "disconnect("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method doBind()Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothHidHost;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothHidHost;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothHidHost;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothHidHost;->mConnection:Landroid/content/ServiceConnection;

    iget-object v5, p0, Landroid/bluetooth/BluetoothHidHost;->mContext:Landroid/content/Context;

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
    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth HID Service with "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "BluetoothHidHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "BluetoothHidHost"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->getDevicesMatchingConnectionStates([I)Ljava/util/List;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    const-string v2, "BluetoothHidHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stack:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v4}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_0
    if-nez v0, :cond_1

    const-string v1, "BluetoothHidHost"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIdletime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->getIdleTime(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public getPriority(Landroid/bluetooth/BluetoothDevice;)I
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->getProtocolMode(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/bluetooth/IBluetoothHidHost;->getReport(Landroid/bluetooth/BluetoothDevice;BBI)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sendData("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), report="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHidHost;->sendData(Landroid/bluetooth/BluetoothDevice;Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setIdletime("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "), idleTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHidHost;->setIdleTime(Landroid/bluetooth/BluetoothDevice;B)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public setPriority(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPriority("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p2, :cond_0

    const/16 v2, 0x64

    if-eq p2, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHidHost;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    if-nez v0, :cond_2

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method public setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setProtocolMode("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetoothHidHost;->setProtocolMode(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Landroid/bluetooth/IBluetoothHidHost;->setReport(Landroid/bluetooth/BluetoothDevice;BLjava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method public virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "virtualUnplug("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothHidHost;->log(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothHidHost;->mService:Landroid/bluetooth/IBluetoothHidHost;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothHidHost;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Landroid/bluetooth/BluetoothHidHost;->isValidDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetoothHidHost;->virtualUnplug(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v2

    const-string v3, "BluetoothHidHost"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stack:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/Throwable;

    invoke-direct {v5}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v5}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    if-nez v0, :cond_1

    const-string v2, "BluetoothHidHost"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method
