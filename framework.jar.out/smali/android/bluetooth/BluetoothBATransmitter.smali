.class public final Landroid/bluetooth/BluetoothBATransmitter;
.super Ljava/lang/Object;
.source "BluetoothBATransmitter.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile;


# static fields
.field public static final ACTION_BAT_AVRCP_VS_CMD:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_AVRCP_VS_CMD"

.field public static final ACTION_BAT_DIV_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_DIV_CHANGED"

.field public static final ACTION_BAT_ENCRYPTION_KEY_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_ENC_KEY_CHANGED"

.field public static final ACTION_BAT_STATE_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_STATE_CHANGED"

.field public static final ACTION_BAT_STREAMING_ID_CHANGED:Ljava/lang/String; = "android.bluetooth.bat.profile.action.BA_STR_ID_CHANGED"

.field private static final DBG:Z = true

.field public static final DISABLE_BA_TRANSMITTER:I = 0x1

.field public static final ENABLE_BA_TRANSMITTER:I = 0x0

.field public static final EXTRA_AVRCP_VS_ENABLE_BA:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.ENABLE_BA"

.field public static final EXTRA_AVRCP_VS_ENABLE_RA:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.ENABLE_RA"

.field public static final EXTRA_DIV_VALUE:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.DIV"

.field public static final EXTRA_ECNRYPTION_KEY:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.ENC_KEY"

.field public static final EXTRA_STATE:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.STATE"

.field public static final EXTRA_STREAM_ID:Ljava/lang/String; = "android.bluetooth.bat.profile.extra.STR_ID"

.field public static final INVALID_DIV:I = 0xffff

.field public static final STATE_DISABLED:I = 0x0

.field public static final STATE_PAUSED:I = 0x1

.field public static final STATE_PLAYING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothBAT"

.field private static final VDBG:Z = false


# instance fields
.field private mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mService:Landroid/bluetooth/IBluetoothBATransmitter;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mServiceLock"
    .end annotation
.end field

.field private mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBATransmitter$1;-><init>(Landroid/bluetooth/BluetoothBATransmitter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBATransmitter$2;-><init>(Landroid/bluetooth/BluetoothBATransmitter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothBAT"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothBATransmitter;->doBind()Z

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothBATransmitter;Landroid/bluetooth/IBluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    .locals 0

    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "BluetoothBAT"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method close()V
    .locals 5

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "BluetoothBAT"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v2, :cond_1

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "BluetoothBAT"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    nop

    return-void

    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method doBind()Z
    .locals 6

    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

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
    const-string v3, "BluetoothBAT"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not bind to Bluetooth Broadcast Audio Transmitter Service "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public finalize()V
    .locals 0

    return-void
.end method

.method public getBAServiceRecord()Landroid/bluetooth/BluetoothBAStreamServiceRecord;
    .locals 5

    const-string v0, "getBAServiceRecord"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getBAServiceRecord()Landroid/bluetooth/BluetoothBAStreamServiceRecord;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothBAT"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBATState()I
    .locals 5

    const-string v0, "getBATState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getBATState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothBAT"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getConnectedDevices()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "getConnectedDevices() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    const-string v0, "getConnectionState() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method public getDIV()I
    .locals 5

    const-string v0, "getDIV"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const v0, 0xffff

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getDIV()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothBAT"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    const-string v0, "getDevicesMatchingStates() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEncryptionKey()Landroid/bluetooth/BluetoothBAEncryptionKey;
    .locals 5

    const-string v0, "getEncryptionKey"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getEncryptionKey()Landroid/bluetooth/BluetoothBAEncryptionKey;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothBAT"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-object v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getStreamId()J
    .locals 6

    const-string v0, "getStreamId"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothBATransmitter;->getStreamId()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v2

    :cond_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v2, :cond_1

    const-string v2, "BluetoothBAT"

    const-string v3, "Proxy not attached to service"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "BluetoothBAT"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return-wide v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public refreshEncryptionKey()Z
    .locals 5

    const-string v0, "getEncryptionKey"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->refreshEncryptionKey()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothBAT"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public setBATState(I)Z
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setBATState("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothBATransmitter;->setBATState(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v1

    :cond_0
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-nez v1, :cond_1

    const-string v1, "BluetoothBAT"

    const-string v2, "Proxy not attached to service"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    nop

    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v2, "BluetoothBAT"

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
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    return v0

    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
