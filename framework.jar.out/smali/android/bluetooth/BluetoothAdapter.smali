.class public final Landroid/bluetooth/BluetoothAdapter;
.super Ljava/lang/Object;
.source "BluetoothAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/bluetooth/BluetoothAdapter$LeScanCallback;,
        Landroid/bluetooth/BluetoothAdapter$StateChangeCallbackWrapper;,
        Landroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;,
        Landroid/bluetooth/BluetoothAdapter$ScanMode;,
        Landroid/bluetooth/BluetoothAdapter$AdapterState;
    }
.end annotation


# static fields
.field public static final ACTION_BLE_ACL_CONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_CONNECTED"

.field public static final ACTION_BLE_ACL_DISCONNECTED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_ACL_DISCONNECTED"

.field public static final ACTION_BLE_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLE_STATE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_BLUETOOTH_ADDRESS_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.BLUETOOTH_ADDRESS_CHANGED"

.field public static final ACTION_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

.field public static final ACTION_DISCOVERY_FINISHED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

.field public static final ACTION_DISCOVERY_STARTED:Ljava/lang/String; = "android.bluetooth.adapter.action.DISCOVERY_STARTED"

.field public static final ACTION_LOCAL_NAME_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.LOCAL_NAME_CHANGED"

.field public static final ACTION_REQUEST_BLE_SCAN_ALWAYS_AVAILABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_BLE_SCAN_ALWAYS_AVAILABLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final ACTION_REQUEST_DISABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISABLE"

.field public static final ACTION_REQUEST_DISCOVERABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_DISCOVERABLE"

.field public static final ACTION_REQUEST_ENABLE:Ljava/lang/String; = "android.bluetooth.adapter.action.REQUEST_ENABLE"

.field public static final ACTION_SCAN_MODE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.SCAN_MODE_CHANGED"

.field public static final ACTION_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.adapter.action.STATE_CHANGED"

.field private static final ADDRESS_LENGTH:I = 0x11

.field public static final BLUETOOTH_MANAGER_SERVICE:Ljava/lang/String; = "bluetooth_manager"

.field private static final DBG:Z = true

.field public static final DEFAULT_MAC_ADDRESS:Ljava/lang/String; = "02:00:00:00:00:00"

.field public static final ERROR:I = -0x80000000

.field public static final EXTRA_BLUETOOTH_ADDRESS:Ljava/lang/String; = "android.bluetooth.adapter.extra.BLUETOOTH_ADDRESS"

.field public static final EXTRA_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.CONNECTION_STATE"

.field public static final EXTRA_DISCOVERABLE_DURATION:Ljava/lang/String; = "android.bluetooth.adapter.extra.DISCOVERABLE_DURATION"

.field public static final EXTRA_LOCAL_NAME:Ljava/lang/String; = "android.bluetooth.adapter.extra.LOCAL_NAME"

.field public static final EXTRA_PREVIOUS_CONNECTION_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_CONNECTION_STATE"

.field public static final EXTRA_PREVIOUS_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_SCAN_MODE"

.field public static final EXTRA_PREVIOUS_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.PREVIOUS_STATE"

.field public static final EXTRA_SCAN_MODE:Ljava/lang/String; = "android.bluetooth.adapter.extra.SCAN_MODE"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.adapter.extra.STATE"

.field public static final LE_PSM_CHARACTERISTIC_UUID:Ljava/util/UUID;

.field public static final SCAN_MODE_CONNECTABLE:I = 0x15

.field public static final SCAN_MODE_CONNECTABLE_DISCOVERABLE:I = 0x17

.field public static final SCAN_MODE_NONE:I = 0x14

.field public static final SOCKET_CHANNEL_AUTO_STATIC_NO_SDP:I = -0x2

.field public static final STATE_BLE_ON:I = 0xf

.field public static final STATE_BLE_TURNING_OFF:I = 0x10

.field public static final STATE_BLE_TURNING_ON:I = 0xe

.field public static final STATE_CONNECTED:I = 0x2

.field public static final STATE_CONNECTING:I = 0x1

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_DISCONNECTING:I = 0x3

.field public static final STATE_OFF:I = 0xa

.field public static final STATE_ON:I = 0xc

.field public static final STATE_TURNING_OFF:I = 0xd

.field public static final STATE_TURNING_ON:I = 0xb

.field private static final TAG:Ljava/lang/String; = "BluetoothAdapter"

.field private static final VDBG:Z = false

.field private static sAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private static sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

.field private static sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

.field private static sPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;


# instance fields
.field private final mLeScanClients:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/BluetoothAdapter$LeScanCallback;",
            "Landroid/bluetooth/le/ScanCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private final mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

.field private final mManagerService:Landroid/bluetooth/IBluetoothManager;

.field private final mProxyServiceStateCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/bluetooth/IBluetoothManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Landroid/bluetooth/IBluetooth;

.field private final mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

.field private final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "2d410339-82b6-42aa-b34e-e2e01df8cc1a"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/bluetooth/BluetoothAdapter;->LE_PSM_CHARACTERISTIC_UUID:Ljava/util/UUID;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/bluetooth/BluetoothAdapter$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothAdapter$1;-><init>(Landroid/bluetooth/BluetoothAdapter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {p1, v0}, Landroid/bluetooth/IBluetoothManager;->registerAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    return-void

    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bluetooth manager service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothAdapter;)Landroid/bluetooth/IBluetooth;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothAdapter;Landroid/bluetooth/IBluetooth;)Landroid/bluetooth/IBluetooth;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothAdapter;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object v0
.end method

.method static synthetic access$500()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 1

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0
.end method

.method public static checkBluetoothAddress(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_0

    goto :goto_2

    :cond_0
    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_5

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    rem-int/lit8 v4, v1, 0x3

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/16 v4, 0x3a

    if-ne v3, v4, :cond_1

    goto :goto_1

    :cond_1
    return v0

    :pswitch_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_2

    const/16 v4, 0x39

    if-le v3, v4, :cond_4

    :cond_2
    const/16 v4, 0x41

    if-lt v3, v4, :cond_3

    const/16 v4, 0x46

    if-gt v3, v4, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x1

    return v0

    :cond_6
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    new-instance v1, Landroid/os/ParcelUuid;

    invoke-direct {v1, p2}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v2, 0x1

    invoke-direct {v0, v2, p3, p4, v1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZLandroid/os/ParcelUuid;)V

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothServerSocket;->setServiceName(Ljava/lang/String;)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static declared-synchronized getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;
    .locals 4

    const-class v0, Landroid/bluetooth/BluetoothAdapter;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-nez v1, :cond_1

    const-string v1, "bluetooth_manager"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v2

    new-instance v3, Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {v3, v2}, Landroid/bluetooth/BluetoothAdapter;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v3, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;

    goto :goto_0

    :cond_0
    const-string v2, "BluetoothAdapter"

    const-string v3, "Bluetooth binder is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static listenUsingScoOn()Landroid/bluetooth/BluetoothServerSocket;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, -0x1

    invoke-direct {v0, v2, v1, v1, v3}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    nop

    return-object v0
.end method

.method public static nameForState(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "?!?!? ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_0
    const-string v0, "BLE_TURNING_OFF"

    return-object v0

    :pswitch_1
    const-string v0, "BLE_ON"

    return-object v0

    :pswitch_2
    const-string v0, "BLE_TURNING_ON"

    return-object v0

    :pswitch_3
    const-string v0, "TURNING_OFF"

    return-object v0

    :pswitch_4
    const-string v0, "ON"

    return-object v0

    :pswitch_5
    const-string v0, "TURNING_ON"

    return-object v0

    :pswitch_6
    const-string v0, "OFF"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/bluetooth/BluetoothDevice;",
            ")",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public cancelDiscovery()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->cancelDiscovery()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public changeApplicationBluetoothState(ZLandroid/bluetooth/BluetoothAdapter$BluetoothStateChangeCallback;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    :pswitch_1
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothBATransmitter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothBATransmitter;->close()V

    goto/16 :goto_0

    :pswitch_2
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothDun;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDun;->close()V

    goto/16 :goto_0

    :pswitch_3
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->close()V

    goto/16 :goto_0

    :pswitch_4
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHidDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidDevice;->close()V

    goto :goto_0

    :pswitch_5
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothMapClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMapClient;->close()V

    goto :goto_0

    :pswitch_6
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPbapClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPbapClient;->close()V

    goto :goto_0

    :pswitch_7
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadsetClient;->close()V

    goto :goto_0

    :pswitch_8
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAvrcpController;->close()V

    goto :goto_0

    :pswitch_9
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dpSink;->close()V

    goto :goto_0

    :pswitch_a
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothSap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothSap;->close()V

    goto :goto_0

    :pswitch_b
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap;->close()V

    goto :goto_0

    :pswitch_c
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothGattServer;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattServer;->close()V

    goto :goto_0

    :pswitch_d
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothGatt;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGatt;->close()V

    goto :goto_0

    :pswitch_e
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->close()V

    goto :goto_0

    :pswitch_f
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidHost;->close()V

    goto :goto_0

    :pswitch_10
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHealth;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHealth;->close()V

    goto :goto_0

    :pswitch_11
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->close()V

    goto :goto_0

    :pswitch_12
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->close()V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public disable()Z
    .locals 3

    const/16 v0, 0x39

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothManager;->disable(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public disable(Z)Z
    .locals 3

    const/16 v0, 0x39

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/bluetooth/IBluetoothManager;->disable(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public disableBLE()Z
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_2

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "disableBLE(): Already disabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :goto_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "disableBLE(): de-registering "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v4, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    invoke-interface {v3, v4, v1, v2}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v3, "BluetoothAdapter"

    const-string v4, ""

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    const/4 v1, 0x1

    return v1
.end method

.method public enable()Z
    .locals 5

    const/16 v0, 0x38

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xc

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Landroid/util/Permission;

    invoke-direct {v3, v1}, Landroid/util/Permission;-><init>(Landroid/content/Context;)V

    const-string v4, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    invoke-virtual {v3, v4}, Landroid/util/Permission;->requestPermissionAuto(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    return v2

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "BluetoothAdapter"

    const-string v2, "enable(): BT already enabled!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->enable(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method

.method public enableBLE()Z
    .locals 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isBleScanAlwaysAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mToken:Landroid/os/IBinder;

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4, v0}, Landroid/bluetooth/IBluetoothManager;->updateBleAppCount(Landroid/os/IBinder;ZLjava/lang/String;)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLeEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "BluetoothAdapter"

    const-string v3, "enableBLE(): Bluetooth already enabled"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "enableBLE(): Calling enable"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v2, v0}, Landroid/bluetooth/IBluetoothManager;->enable(Ljava/lang/String;)Z

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public enableNoAutoConnect()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BluetoothAdapter"

    const-string v1, "enableNoAutoConnect(): BT already enabled!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->enableNoAutoConnect(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return v0
.end method

.method public factoryReset()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v0, :cond_0

    const-string/jumbo v0, "persist.bluetooth.factoryreset"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->factoryReset()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const/4 v0, 0x0

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getAddress()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getBluetoothClass()Landroid/bluetooth/BluetoothClass;
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return-object v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBluetoothLeAdvertiser()Landroid/bluetooth/le/BluetoothLeAdvertiser;
    .locals 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    if-nez v1, :cond_1

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v1, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v1, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeAdvertiser:Landroid/bluetooth/le/BluetoothLeAdvertiser;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;
    .locals 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    if-nez v1, :cond_1

    new-instance v1, Landroid/bluetooth/le/BluetoothLeScanner;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v1, v2}, Landroid/bluetooth/le/BluetoothLeScanner;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v1, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sBluetoothLeScanner:Landroid/bluetooth/le/BluetoothLeScanner;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getBluetoothManager()Landroid/bluetooth/IBluetoothManager;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method getBluetoothService(Landroid/bluetooth/IBluetoothManagerCallback;)Landroid/bluetooth/IBluetooth;
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    const-string v1, "BluetoothAdapter"

    const-string v2, "getBluetoothService() called with no BluetoothManagerCallback"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    return-object v0

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getBondedDevices()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x3d

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    new-array v0, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getBondedDevices()[Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :cond_1
    :try_start_1
    new-array v0, v1, [Landroid/bluetooth/BluetoothDevice;

    invoke-direct {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->toDeviceSet([Landroid/bluetooth/BluetoothDevice;)Ljava/util/Set;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const/4 v0, 0x0

    return-object v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getConnectionState()I
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getAdapterConnectionState()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "getConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getControllerActivityEnergyInfo(I)Landroid/bluetooth/BluetoothActivityEnergyInfo;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Landroid/os/SynchronousResultReceiver;

    invoke-direct {v0}, Landroid/os/SynchronousResultReceiver;-><init>()V

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothAdapter;->requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V

    const-wide/16 v1, 0x3e8

    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/os/SynchronousResultReceiver;->awaitResult(J)Landroid/os/SynchronousResultReceiver$Result;

    move-result-object v1

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/os/SynchronousResultReceiver$Result;->bundle:Landroid/os/Bundle;

    const-string v3, "controller_activity"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothActivityEnergyInfo;
    :try_end_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothAdapter"

    const-string v3, "getControllerActivityEnergyInfo timed out"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDiscoverableTimeout()I
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, -0x1

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getDiscoverableTimeout()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getDiscoveryEndMillis()J
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getDiscoveryEndMillis()J

    move-result-wide v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const-wide/16 v0, -0x1

    return-wide v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method getLeAccess()Z
    .locals 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const/16 v2, 0xf

    if-ne v0, v2, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getLeMaximumAdvertisingDataLength()I
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getLeMaximumAdvertisingDataLength()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get getLeMaximumAdvertisingDataLength, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getLeState()I
    .locals 4

    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v0

    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getMaxConnectedAudioDevices()I
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getMaxConnectedAudioDevices()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, "failed to get getMaxConnectedAudioDevices, error: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const/4 v0, 0x1

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPeriodicAdvertisingManager()Landroid/bluetooth/le/PeriodicAdvertisingManager;
    .locals 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Landroid/bluetooth/BluetoothAdapter;->sPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    if-nez v1, :cond_2

    new-instance v1, Landroid/bluetooth/le/PeriodicAdvertisingManager;

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-direct {v1, v2}, Landroid/bluetooth/le/PeriodicAdvertisingManager;-><init>(Landroid/bluetooth/IBluetoothManager;)V

    sput-object v1, Landroid/bluetooth/BluetoothAdapter;->sPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Landroid/bluetooth/BluetoothAdapter;->sPeriodicAdvertisingManager:Landroid/bluetooth/le/PeriodicAdvertisingManager;

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getProfileConnectionState(I)I
    .locals 4

    const/16 v0, 0x40

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->getProfileConnectionState(I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "getProfileConnectionState:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_11

    if-nez p2, :cond_0

    goto/16 :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p3, v1, :cond_1

    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_1
    const/4 v2, 0x2

    if-ne p3, v2, :cond_2

    new-instance v0, Landroid/bluetooth/BluetoothA2dp;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_2
    const/16 v2, 0xb

    if-ne p3, v2, :cond_3

    new-instance v0, Landroid/bluetooth/BluetoothA2dpSink;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dpSink;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_3
    const/16 v2, 0xc

    if-ne p3, v2, :cond_4

    new-instance v0, Landroid/bluetooth/BluetoothAvrcpController;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothAvrcpController;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_4
    const/4 v2, 0x4

    if-ne p3, v2, :cond_5

    new-instance v0, Landroid/bluetooth/BluetoothHidHost;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHidHost;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_5
    const/4 v2, 0x5

    if-ne p3, v2, :cond_6

    new-instance v0, Landroid/bluetooth/BluetoothPan;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothPan;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_6
    const/16 v2, 0x16

    if-ne p3, v2, :cond_7

    new-instance v0, Landroid/bluetooth/BluetoothDun;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothDun;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_7
    const/4 v2, 0x3

    if-ne p3, v2, :cond_8

    new-instance v0, Landroid/bluetooth/BluetoothHealth;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHealth;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_8
    const/16 v2, 0x9

    if-ne p3, v2, :cond_9

    new-instance v0, Landroid/bluetooth/BluetoothMap;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothMap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_9
    const/16 v2, 0x10

    if-ne p3, v2, :cond_a

    new-instance v0, Landroid/bluetooth/BluetoothHeadsetClient;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHeadsetClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_a
    const/16 v2, 0xa

    if-ne p3, v2, :cond_b

    new-instance v0, Landroid/bluetooth/BluetoothSap;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothSap;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_b
    const/16 v2, 0x11

    if-ne p3, v2, :cond_c

    new-instance v0, Landroid/bluetooth/BluetoothPbapClient;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothPbapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_c
    const/16 v2, 0x12

    if-ne p3, v2, :cond_d

    new-instance v0, Landroid/bluetooth/BluetoothMapClient;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothMapClient;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_d
    const/16 v2, 0x13

    if-ne p3, v2, :cond_e

    new-instance v0, Landroid/bluetooth/BluetoothHidDevice;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHidDevice;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_e
    const/16 v2, 0x15

    if-ne p3, v2, :cond_f

    new-instance v0, Landroid/bluetooth/BluetoothHearingAid;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothHearingAid;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_f
    const/16 v2, 0x17

    if-ne p3, v2, :cond_10

    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter;

    invoke-direct {v0, p1, p2}, Landroid/bluetooth/BluetoothBATransmitter;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V

    return v1

    :cond_10
    return v0

    :cond_11
    :goto_0
    return v0
.end method

.method public getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    const/16 v0, 0x3e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    invoke-direct {v0, p1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public getRemoteDevice([B)Landroid/bluetooth/BluetoothDevice;
    .locals 6

    const/16 v0, 0x3e

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    new-instance v0, Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v3, "%02X:%02X:%02X:%02X:%02X:%02X"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x1

    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x2

    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x3

    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x4

    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v4

    const/4 v4, 0x5

    aget-byte v5, p1, v4

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-static {v2, v3, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/bluetooth/BluetoothDevice;-><init>(Ljava/lang/String;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Bluetooth address must have 6 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScanMode()I
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0x14

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getScanMode()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getState()I
    .locals 4

    const/16 v0, 0x3f

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    const/16 v0, 0xa

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v1}, Landroid/bluetooth/IBluetooth;->getState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    const/16 v1, 0xe

    if-eq v0, v1, :cond_1

    const/16 v1, 0x10

    if-ne v0, v1, :cond_2

    :cond_1
    const/16 v0, 0xa

    :cond_2
    return v0

    :goto_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v1
.end method

.method public getSupportedProfiles()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2}, Landroid/bluetooth/IBluetooth;->getSupportedProfiles()J

    move-result-wide v2

    const/4 v4, 0x0

    :goto_0
    const/16 v5, 0x17

    if-gt v4, v5, :cond_1

    const/4 v5, 0x1

    shl-int/2addr v5, v4

    int-to-long v5, v5

    and-long/2addr v5, v2

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothAdapter"

    const-string v3, "getSupportedProfiles:"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-object v0
.end method

.method public getUuids()[Landroid/os/ParcelUuid;
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return-object v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isBleScanAlwaysAvailable()Z
    .locals 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isBleScanAlwaysAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "remote expection when calling isBleScanAlwaysAvailable"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method public isDiscovering()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isDiscovering()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isEnabled()Z
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    const/4 v0, 0x0

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isHardwareTrackingFiltersAvailable()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothGatt;->numHwTrackFiltersAvailable()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    return v1

    :catch_0
    move-exception v0

    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public isLe2MPhySupported()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLe2MPhySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isExtendedAdvertisingSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isLeCodedPhySupported()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeCodedPhySupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isLeCodedPhySupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isLeEnabled()Z
    .locals 4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const-string v1, "BluetoothAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isLeEnabled(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public isLeExtendedAdvertisingSupported()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLeExtendedAdvertisingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isLeExtendedAdvertisingSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isLePeriodicAdvertisingSupported()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isLePeriodicAdvertisingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isLePeriodicAdvertisingSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isMultipleAdvertisementSupported()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isMultiAdvertisementSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isMultipleAdvertisementSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isOffloadedFilteringSupported()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isOffloadedFilteringSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isOffloadedFilteringSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isOffloadedScanBatchingSupported()Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getLeAccess()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->isOffloadedScanBatchingSupported()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, "failed to get isOffloadedScanBatchingSupported, error: "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public isOpBluetoothAddress(Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothManager;->isOpBluetoothAddress(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothAdapter"

    invoke-virtual {v1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public listenUsingEncryptedRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v1, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-ltz v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public listenUsingEncryptedRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingInsecureL2capCoc(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenUsingInsecureL2capOn: set assigned PSM to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    return-object v0

    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error: Unable to assign PSM value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listenUsingInsecureL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listenUsingInsecureL2capOn: port="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    move v6, p1

    invoke-direct/range {v2 .. v8}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenUsingInsecureL2capOn: set assigned channel to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public listenUsingInsecureRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, v1, p1}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZI)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public listenUsingInsecureRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x3b

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingL2capCoc(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v2, 0x4

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, -0x2

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenUsingL2capCoc: set assigned PSM to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    return-object v0

    :cond_0
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Error: Unable to assign PSM value"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported transport: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public listenUsingL2capOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingL2capOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "listenUsingL2capOn: set assigned channel to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public listenUsingRfcommOn(I)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public listenUsingRfcommOn(IZZ)Landroid/bluetooth/BluetoothServerSocket;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Landroid/bluetooth/BluetoothServerSocket;

    const/4 v1, 0x1

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/BluetoothServerSocket;-><init>(IZZIZZ)V

    iget-object v1, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothSocket;->bindListen()I

    move-result v1

    const/4 v2, -0x2

    if-ne p1, v2, :cond_0

    iget-object v2, v0, Landroid/bluetooth/BluetoothServerSocket;->mSocket:Landroid/bluetooth/BluetoothSocket;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothSocket;->getPort()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothServerSocket;->setChannel(I)V

    :cond_0
    if-nez v1, :cond_1

    return-object v0

    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public listenUsingRfcommWithServiceRecord(Ljava/lang/String;Ljava/util/UUID;)Landroid/bluetooth/BluetoothServerSocket;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0, v0}, Landroid/bluetooth/BluetoothAdapter;->createNewRfcommSocketAndRecord(Ljava/lang/String;Ljava/util/UUID;ZZ)Landroid/bluetooth/BluetoothServerSocket;

    move-result-object v0

    return-object v0
.end method

.method public readOutOfBandData()Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Pair<",
            "[B[B>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method removeServiceStateCallback(Landroid/bluetooth/IBluetoothManagerCallback;)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mProxyServiceStateCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestControllerActivityEnergyInfo(Landroid/os/ResultReceiver;)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v2, p1}, Landroid/bluetooth/IBluetooth;->requestActivityInfo(Landroid/os/ResultReceiver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :cond_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_1

    :goto_0
    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "BluetoothAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getControllerActivityEnergyInfoCallback: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    :goto_1
    return-void

    :goto_2
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_2
    throw v2
.end method

.method public setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->setBluetoothClass(Landroid/bluetooth/BluetoothClass;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public setDiscoverableTimeout(I)V
    .locals 3

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->setDiscoverableTimeout(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return-void

    :goto_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public setName(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p1}, Landroid/bluetooth/IBluetooth;->setName(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public setScanMode(I)Z
    .locals 2

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getDiscoverableTimeout()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/bluetooth/BluetoothAdapter;->setScanMode(II)Z

    move-result v0

    return v0
.end method

.method public setScanMode(II)Z
    .locals 4

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0, p1, p2}, Landroid/bluetooth/IBluetooth;->setScanMode(II)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public startDiscovery()Z
    .locals 4

    const/16 v0, 0x3a

    invoke-static {v0}, Landroid/util/SeempLog;->record(I)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mService:Landroid/bluetooth/IBluetooth;

    invoke-interface {v0}, Landroid/bluetooth/IBluetooth;->startDiscovery()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "BluetoothAdapter"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    nop

    return v1

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public startLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/bluetooth/BluetoothAdapter;->startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z

    move-result v0

    return v0
.end method

.method public startLeScan([Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)Z
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "BluetoothAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startLeScan(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "BluetoothAdapter"

    const-string/jumbo v2, "startLeScan: null callback"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v2, "BluetoothAdapter"

    const-string/jumbo v3, "startLeScan: cannot get BluetoothLeScanner"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v3, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "BluetoothAdapter"

    const-string v4, "LE Scan has already started"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_2
    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v3
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v3, :cond_3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return v0

    :cond_3
    :try_start_3
    new-instance v4, Landroid/bluetooth/BluetoothAdapter$2;

    invoke-direct {v4, p0, p1, p2}, Landroid/bluetooth/BluetoothAdapter$2;-><init>(Landroid/bluetooth/BluetoothAdapter;[Ljava/util/UUID;Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V

    new-instance v5, Landroid/bluetooth/le/ScanSettings$Builder;

    invoke-direct {v5}, Landroid/bluetooth/le/ScanSettings$Builder;-><init>()V

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/bluetooth/le/ScanSettings$Builder;->setCallbackType(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Landroid/bluetooth/le/ScanSettings$Builder;->setScanMode(I)Landroid/bluetooth/le/ScanSettings$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/bluetooth/le/ScanSettings$Builder;->build()Landroid/bluetooth/le/ScanSettings;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_4

    array-length v8, p1

    if-lez v8, :cond_4

    new-instance v8, Landroid/bluetooth/le/ScanFilter$Builder;

    invoke-direct {v8}, Landroid/bluetooth/le/ScanFilter$Builder;-><init>()V

    new-instance v9, Landroid/os/ParcelUuid;

    aget-object v10, p1, v0

    invoke-direct {v9, v10}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-virtual {v8, v9}, Landroid/bluetooth/le/ScanFilter$Builder;->setServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/ScanFilter$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/bluetooth/le/ScanFilter$Builder;->build()Landroid/bluetooth/le/ScanFilter;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-virtual {v1, v7, v5, v4}, Landroid/bluetooth/le/BluetoothLeScanner;->startScan(Ljava/util/List;Landroid/bluetooth/le/ScanSettings;Landroid/bluetooth/le/ScanCallback;)V

    iget-object v8, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v8, p2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2

    return v6

    :catch_0
    move-exception v3

    const-string v4, "BluetoothAdapter"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v2

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public stopLeScan(Landroid/bluetooth/BluetoothAdapter$LeScanCallback;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "BluetoothAdapter"

    const-string/jumbo v1, "stopLeScan()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothLeScanner()Landroid/bluetooth/le/BluetoothLeScanner;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothAdapter;->mLeScanClients:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/le/ScanCallback;

    if-nez v2, :cond_1

    const-string v3, "BluetoothAdapter"

    const-string/jumbo v4, "scan not started yet"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    return-void

    :cond_1
    invoke-virtual {v0, v2}, Landroid/bluetooth/le/BluetoothLeScanner;->stopScan(Landroid/bluetooth/le/ScanCallback;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public unregisterAdapter()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerService:Landroid/bluetooth/IBluetoothManager;

    iget-object v1, p0, Landroid/bluetooth/BluetoothAdapter;->mManagerCallback:Landroid/bluetooth/IBluetoothManagerCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->unregisterAdapter(Landroid/bluetooth/IBluetoothManagerCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "BluetoothAdapter"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    return-void

    :goto_2
    throw v0
.end method
