.class public final Landroid/bluetooth/BluetoothGatt;
.super Ljava/lang/Object;
.source "BluetoothGatt.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field static final AUTHENTICATION_MITM:I = 0x2

.field static final AUTHENTICATION_NONE:I = 0x0

.field static final AUTHENTICATION_NO_MITM:I = 0x1

.field private static final AUTH_RETRY_STATE_IDLE:I = 0x0

.field private static final AUTH_RETRY_STATE_MITM:I = 0x2

.field private static final AUTH_RETRY_STATE_NO_MITM:I = 0x1

.field public static final CONNECTION_PRIORITY_BALANCED:I = 0x0

.field public static final CONNECTION_PRIORITY_HIGH:I = 0x1

.field public static final CONNECTION_PRIORITY_LOW_POWER:I = 0x2

.field private static final CONN_STATE_CLOSED:I = 0x4

.field private static final CONN_STATE_CONNECTED:I = 0x2

.field private static final CONN_STATE_CONNECTING:I = 0x1

.field private static final CONN_STATE_DISCONNECTING:I = 0x3

.field private static final CONN_STATE_IDLE:I = 0x0

.field private static final DBG:Z = true

.field public static final GATT_CONNECTION_CONGESTED:I = 0x8f

.field public static final GATT_FAILURE:I = 0x101

.field public static final GATT_INSUFFICIENT_AUTHENTICATION:I = 0x5

.field public static final GATT_INSUFFICIENT_ENCRYPTION:I = 0xf

.field public static final GATT_INVALID_ATTRIBUTE_LENGTH:I = 0xd

.field public static final GATT_INVALID_OFFSET:I = 0x7

.field public static final GATT_READ_NOT_PERMITTED:I = 0x2

.field public static final GATT_REQUEST_NOT_SUPPORTED:I = 0x6

.field public static final GATT_SUCCESS:I = 0x0

.field public static final GATT_WRITE_NOT_PERMITTED:I = 0x3

.field private static final TAG:Ljava/lang/String; = "BluetoothGatt"

.field private static final VDBG:Z = false


# instance fields
.field private mAuthRetryState:I

.field private mAutoConnect:Z

.field private final mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

.field private volatile mCallback:Landroid/bluetooth/BluetoothGattCallback;

.field private mClientIf:I

.field private mConnState:I

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceBusy:Ljava/lang/Boolean;

.field private mHandler:Landroid/os/Handler;

.field private mOpportunistic:Z

.field private mPhy:I

.field private mService:Landroid/bluetooth/IBluetoothGatt;

.field private mServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateLock:Ljava/lang/Object;

.field private mTransport:I


# direct methods
.method constructor <init>(Landroid/bluetooth/IBluetoothGatt;Landroid/bluetooth/BluetoothDevice;IZI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    new-instance v1, Landroid/bluetooth/BluetoothGatt$1;

    invoke-direct {v1, p0}, Landroid/bluetooth/BluetoothGatt$1;-><init>(Landroid/bluetooth/BluetoothGatt;)V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iput p3, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    iput p5, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    iput-boolean p4, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return v0
.end method

.method static synthetic access$002(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    return p1
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothGattCallback;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/IBluetoothGatt;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1102(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1200(Landroid/bluetooth/BluetoothGatt;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return v0
.end method

.method static synthetic access$1302(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return p1
.end method

.method static synthetic access$1308(Landroid/bluetooth/BluetoothGatt;)I
    .locals 2

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return v0
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothGatt;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/bluetooth/BluetoothGatt;->runOrQueueCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothGatt;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$402(Landroid/bluetooth/BluetoothGatt;I)I
    .locals 0

    iput p1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    return p1
.end method

.method static synthetic access$500(Landroid/bluetooth/BluetoothGatt;)Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$600(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    return v0
.end method

.method static synthetic access$700(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    return v0
.end method

.method static synthetic access$800(Landroid/bluetooth/BluetoothGatt;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    return v0
.end method

.method static synthetic access$900(Landroid/bluetooth/BluetoothGatt;)I
    .locals 1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    return v0
.end method

.method private registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .locals 5

    const-string v0, "BluetoothGatt"

    const-string/jumbo v1, "registerApp()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iput-object p1, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    iput-object p2, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    const-string v2, "BluetoothGatt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerApp() - UUID="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    new-instance v3, Landroid/os/ParcelUuid;

    invoke-direct {v3, v0}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mBluetoothGattCallback:Landroid/bluetooth/IBluetoothGattCallback;

    invoke-interface {v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->registerClient(Landroid/os/ParcelUuid;Landroid/bluetooth/IBluetoothGattCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v2

    const-string v3, "BluetoothGatt"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method private runOrQueueCallback(Ljava/lang/Runnable;)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, "Unhandled exception in callback"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method private unregisterApp()V
    .locals 3

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterApp() - mClientIf="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mCallback:Landroid/bluetooth/BluetoothGattCallback;

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothGatt;->unregisterClient(I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public abortReliableWrite()V
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public abortReliableWrite(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothGatt;->abortReliableWrite()V

    return-void
.end method

.method public beginReliableWrite()Z
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->beginReliableWrite(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public close()V
    .locals 2

    const-string v0, "BluetoothGatt"

    const-string v1, "close()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/bluetooth/BluetoothGatt;->unregisterApp()V

    const/4 v0, 0x4

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/bluetooth/BluetoothGatt;->mAuthRetryState:I

    return-void
.end method

.method public connect()Z
    .locals 7

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mTransport:I

    iget-boolean v5, p0, Landroid/bluetooth/BluetoothGatt;->mOpportunistic:Z

    iget v6, p0, Landroid/bluetooth/BluetoothGatt;->mPhy:I

    invoke-interface/range {v0 .. v6}, Landroid/bluetooth/IBluetoothGatt;->clientConnect(ILjava/lang/String;ZIZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    return v1
.end method

.method connect(Ljava/lang/Boolean;Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z
    .locals 3

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "connect() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Landroid/bluetooth/BluetoothGatt;->mAutoConnect:Z

    invoke-direct {p0, p2, p3}, Landroid/bluetooth/BluetoothGatt;->registerApp(Landroid/bluetooth/BluetoothGattCallback;Landroid/os/Handler;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mStateLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_1
    iput v1, p0, Landroid/bluetooth/BluetoothGatt;->mConnState:I

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "BluetoothGatt"

    const-string v2, "Failed to register callback"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_0
    return v1

    :cond_1
    :try_start_3
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Not idle"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public disconnect()V
    .locals 3

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelOpen() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt;->clientDisconnect(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_1
    :goto_1
    return-void
.end method

.method public discoverServiceByUuid(Ljava/util/UUID;)Z
    .locals 5

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServiceByUuid() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/os/ParcelUuid;

    invoke-direct {v4, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    invoke-interface {v0, v2, v3, v4}, Landroid/bluetooth/IBluetoothGatt;->discoverServiceByUuid(ILjava/lang/String;Landroid/os/ParcelUuid;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public discoverServices()Z
    .locals 4

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discoverServices() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->discoverServices(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public executeReliableWrite()Z
    .locals 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v3, v4, v2}, Landroid/bluetooth/IBluetoothGatt;->endReliableWrite(ILjava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v2

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return v1
.end method

.method getCharacteristicById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattCharacteristic;
    .locals 5

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v4

    if-ne v4, p2, :cond_0

    return-object v3

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectedDevices instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getConnectionState instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getDescriptorById(Landroid/bluetooth/BluetoothDevice;I)Landroid/bluetooth/BluetoothGattDescriptor;
    .locals 7

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getCharacteristics()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothGattCharacteristic;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothGattCharacteristic;->getDescriptors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/bluetooth/BluetoothGattDescriptor;

    invoke-virtual {v5}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v6

    if-ne v6, p2, :cond_0

    return-object v5

    :cond_0
    goto :goto_2

    :cond_1
    goto :goto_1

    :cond_2
    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Use BluetoothManager#getDevicesMatchingConnectionStates instead."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getService(Landroid/bluetooth/BluetoothDevice;Ljava/util/UUID;I)Landroid/bluetooth/BluetoothGattService;
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getInstanceId()I

    move-result v2

    if-ne v2, p3, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getService(Ljava/util/UUID;)Landroid/bluetooth/BluetoothGattService;
    .locals 4

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothGattService;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getServices()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothGattService;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothGatt;->mServices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothGattService;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public readCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    monitor-exit v3

    return v1

    :cond_4
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v5, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v7

    invoke-interface {v3, v5, v6, v7, v1}, Landroid/bluetooth/IBluetoothGatt;->readCharacteristic(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v4

    :catch_0
    move-exception v3

    const-string v4, "BluetoothGatt"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :goto_0
    return v1
.end method

.method public readDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 9

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    monitor-exit v4

    return v1

    :cond_4
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v6, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v8

    invoke-interface {v4, v6, v7, v8, v1}, Landroid/bluetooth/IBluetoothGatt;->readDescriptor(ILjava/lang/String;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v5

    :catch_0
    move-exception v4

    const-string v5, "BluetoothGatt"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :goto_0
    return v1
.end method

.method public readPhy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/bluetooth/IBluetoothGatt;->clientReadPhy(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public readRemoteRssi()Z
    .locals 4

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readRssi() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->readRemoteRssi(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public readUsingCharacteristicUuid(Ljava/util/UUID;II)Z
    .locals 11

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    monitor-exit v0

    return v1

    :cond_1
    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v5, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/os/ParcelUuid;

    invoke-direct {v7, p1}, Landroid/os/ParcelUuid;-><init>(Ljava/util/UUID;)V

    const/4 v10, 0x0

    move v8, p2

    move v9, p3

    invoke-interface/range {v4 .. v10}, Landroid/bluetooth/IBluetoothGatt;->readUsingCharacteristicUuid(ILjava/lang/String;Landroid/os/ParcelUuid;III)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v2

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_2
    :goto_0
    return v1
.end method

.method public refresh()Z
    .locals 4

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refresh() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Landroid/bluetooth/IBluetoothGatt;->refreshDevice(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public requestConnectionPriority(I)Z
    .locals 4

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-gt p1, v0, :cond_2

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "requestConnectionPriority() - params: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->connectionParameterUpdate(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "connectionPriority not within valid range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestLeConnectionUpdate(IIIIII)Z
    .locals 17

    move-object/from16 v1, p0

    move/from16 v11, p1

    move/from16 v12, p2

    const-string v0, "BluetoothGatt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestLeConnectionUpdate() - min=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v3, v11

    const-wide/high16 v5, 0x3ff4000000000000L    # 1.25

    mul-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "msec, max=("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    int-to-double v3, v12

    mul-double/2addr v5, v3

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "msec, latency="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v13, p3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", timeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p4

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "msec, min_ce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p5

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", max_ce="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/16 v16, 0x0

    if-eqz v0, :cond_1

    iget v0, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v2, v1, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v3, v1, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v0, v1, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v10, p6

    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->leConnectionUpdate(ILjava/lang/String;IIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v16

    :cond_1
    :goto_0
    return v16
.end method

.method public requestMtu(I)Z
    .locals 4

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configureMTU() - device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mtu: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v2, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v2, v3, p1}, Landroid/bluetooth/IBluetoothGatt;->configureMTU(ILjava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    const-string v2, "BluetoothGatt"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_1
    :goto_0
    return v1
.end method

.method public setCharacteristicNotification(Landroid/bluetooth/BluetoothGattCharacteristic;Z)Z
    .locals 7

    const-string v0, "BluetoothGatt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setCharacteristicNotification() - uuid: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getUuid()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " enable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    :try_start_0
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v4, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v6

    invoke-interface {v3, v4, v5, v6, p2}, Landroid/bluetooth/IBluetoothGatt;->registerForNotification(ILjava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v1, 0x1

    return v1

    :catch_0
    move-exception v3

    const-string v4, "BluetoothGatt"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public setPreferredPhy(III)V
    .locals 6

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v1, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    iget-object v2, p0, Landroid/bluetooth/BluetoothGatt;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/bluetooth/IBluetoothGatt;->clientSetPreferredPhy(ILjava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BluetoothGatt"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public writeCharacteristic(Landroid/bluetooth/BluetoothGattCharacteristic;)Z
    .locals 13

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getProperties()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v3, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v3

    :try_start_0
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    monitor-exit v3

    return v1

    :cond_4
    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v7, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getInstanceId()I

    move-result v9

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getWriteType()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattCharacteristic;->getValue()[B

    move-result-object v12

    invoke-interface/range {v6 .. v12}, Landroid/bluetooth/IBluetoothGatt;->writeCharacteristic(ILjava/lang/String;III[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v4

    :catch_0
    move-exception v3

    const-string v4, "BluetoothGatt"

    const-string v5, ""

    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :goto_0
    return v1
.end method

.method public writeDescriptor(Landroid/bluetooth/BluetoothGattDescriptor;)Z
    .locals 13

    iget-object v0, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    iget v0, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getCharacteristic()Landroid/bluetooth/BluetoothGattCharacteristic;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothGattCharacteristic;->getService()Landroid/bluetooth/BluetoothGattService;

    move-result-object v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothGattService;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_3

    return v1

    :cond_3
    iget-object v4, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    monitor-exit v4

    return v1

    :cond_4
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v7, p0, Landroid/bluetooth/BluetoothGatt;->mService:Landroid/bluetooth/IBluetoothGatt;

    iget v8, p0, Landroid/bluetooth/BluetoothGatt;->mClientIf:I

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getInstanceId()I

    move-result v10

    const/4 v11, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothGattDescriptor;->getValue()[B

    move-result-object v12

    invoke-interface/range {v7 .. v12}, Landroid/bluetooth/IBluetoothGatt;->writeDescriptor(ILjava/lang/String;II[B)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return v5

    :catch_0
    move-exception v4

    const-string v5, "BluetoothGatt"

    const-string v6, ""

    invoke-static {v5, v6, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Landroid/bluetooth/BluetoothGatt;->mDeviceBusy:Ljava/lang/Boolean;

    return v1

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :cond_5
    :goto_0
    return v1
.end method
