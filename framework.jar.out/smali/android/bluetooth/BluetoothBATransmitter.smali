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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "l"    # Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 157
    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    .line 161
    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter$1;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBATransmitter$1;-><init>(Landroid/bluetooth/BluetoothBATransmitter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    .line 481
    new-instance v0, Landroid/bluetooth/BluetoothBATransmitter$2;

    invoke-direct {v0, p0}, Landroid/bluetooth/BluetoothBATransmitter$2;-><init>(Landroid/bluetooth/BluetoothBATransmitter;)V

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    .line 197
    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    .line 198
    iput-object p2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 199
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 200
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 201
    .local v0, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v0, :cond_0

    .line 203
    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v0, v1}, Landroid/bluetooth/IBluetoothManager;->registerStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    goto :goto_0

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "BluetoothBAT"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 209
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothBATransmitter;->doBind()Z

    .line 210
    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/BluetoothBATransmitter;)Ljava/util/concurrent/locks/ReentrantReadWriteLock;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 55
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    return-object v0
.end method

.method static synthetic access$100(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 55
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    return-object v0
.end method

.method static synthetic access$102(Landroid/bluetooth/BluetoothBATransmitter;Landroid/bluetooth/IBluetoothBATransmitter;)Landroid/bluetooth/IBluetoothBATransmitter;
    .locals 0
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;
    .param p1, "x1"    # Landroid/bluetooth/IBluetoothBATransmitter;

    .line 55
    iput-object p1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    return-object p1
.end method

.method static synthetic access$200(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/ServiceConnection;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 55
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 55
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/BluetoothBATransmitter;)Landroid/bluetooth/BluetoothProfile$ServiceListener;
    .locals 1
    .param p0, "x0"    # Landroid/bluetooth/BluetoothBATransmitter;

    .line 55
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    return-object v0
.end method

.method private isEnabled()Z
    .locals 2

    .line 512
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 513
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .line 517
    const-string v0, "BluetoothBAT"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    return-void
.end method


# virtual methods
.method close()V
    .locals 5

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 226
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getBluetoothManager()Landroid/bluetooth/IBluetoothManager;

    move-result-object v1

    .line 227
    .local v1, "mgr":Landroid/bluetooth/IBluetoothManager;
    if-eqz v1, :cond_0

    .line 229
    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mBluetoothStateChangeCallback:Landroid/bluetooth/IBluetoothStateChangeCallback;

    invoke-interface {v1, v2}, Landroid/bluetooth/IBluetoothManager;->unregisterStateChangeCallback(Landroid/bluetooth/IBluetoothStateChangeCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    goto :goto_0

    .line 230
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "BluetoothBAT"

    const-string v4, ""

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    :try_start_1
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->lock()V

    .line 237
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v2, :cond_1

    .line 238
    iput-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    .line 239
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 244
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 241
    :catch_1
    move-exception v0

    .line 242
    .local v0, "re":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "BluetoothBAT"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    .end local v0    # "re":Ljava/lang/Exception;
    :cond_1
    :goto_1
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    .line 245
    nop

    .line 246
    return-void

    .line 244
    :goto_2
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->writeLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$WriteLock;->unlock()V

    throw v0
.end method

.method doBind()Z
    .locals 6

    .line 213
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v1

    .line 215
    .local v1, "comp":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 216
    if-eqz v1, :cond_1

    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/bluetooth/BluetoothBATransmitter;->mConnection:Landroid/content/ServiceConnection;

    .line 217
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    .line 216
    invoke-virtual {v3, v0, v4, v2, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    const/4 v2, 0x1

    return v2

    .line 218
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

    .line 219
    return v2
.end method

.method public finalize()V
    .locals 0

    .line 251
    return-void
.end method

.method public getBAServiceRecord()Landroid/bluetooth/BluetoothBAStreamServiceRecord;
    .locals 5

    .line 438
    const-string v0, "getBAServiceRecord"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 440
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 441
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 442
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getBAServiceRecord()Landroid/bluetooth/BluetoothBAStreamServiceRecord;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 450
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 442
    return-object v1

    .line 444
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

    .line 445
    :cond_1
    nop

    .line 450
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 445
    return-object v0

    .line 450
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 446
    :catch_0
    move-exception v1

    .line 447
    .local v1, "e":Landroid/os/RemoteException;
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

    .line 448
    nop

    .line 450
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 448
    return-object v0

    .line 450
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getBATState()I
    .locals 5

    .line 299
    const-string v0, "getBATState"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 302
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getBATState()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 303
    return v1

    .line 305
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

    .line 306
    :cond_1
    nop

    .line 311
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 306
    return v0

    .line 311
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 307
    :catch_0
    move-exception v1

    .line 308
    .local v1, "e":Landroid/os/RemoteException;
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

    .line 309
    nop

    .line 311
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 309
    return v0

    .line 311
    .end local v1    # "e":Landroid/os/RemoteException;
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

    .line 459
    const-string v0, "getConnectedDevices() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 460
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getConnectionState(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1
    .param p1, "device"    # Landroid/bluetooth/BluetoothDevice;

    .line 477
    const-string v0, "getConnectionState() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    return v0
.end method

.method public getDIV()I
    .locals 5

    .line 328
    const-string v0, "getDIV"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 330
    const v0, 0xffff

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 331
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 332
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getDIV()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 340
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 332
    return v1

    .line 334
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

    .line 335
    :cond_1
    nop

    .line 340
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 335
    return v0

    .line 340
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, "e":Landroid/os/RemoteException;
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

    .line 338
    nop

    .line 340
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 338
    return v0

    .line 340
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getDevicesMatchingConnectionStates([I)Ljava/util/List;
    .locals 1
    .param p1, "states"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I)",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 468
    const-string v0, "getDevicesMatchingStates() dummy impl"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 469
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getEncryptionKey()Landroid/bluetooth/BluetoothBAEncryptionKey;
    .locals 5

    .line 383
    const-string v0, "getEncryptionKey"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 385
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 386
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->getEncryptionKey()Landroid/bluetooth/BluetoothBAEncryptionKey;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 387
    return-object v1

    .line 389
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

    .line 390
    :cond_1
    nop

    .line 395
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 390
    return-object v0

    .line 395
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 391
    :catch_0
    move-exception v1

    .line 392
    .local v1, "e":Landroid/os/RemoteException;
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

    .line 393
    nop

    .line 395
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 393
    return-object v0

    .line 395
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public getStreamId()J
    .locals 6

    .line 355
    const-string v0, "getStreamId"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 357
    const-wide/16 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 358
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v2, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v2}, Landroid/bluetooth/IBluetoothBATransmitter;->getStreamId()J

    move-result-wide v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 359
    return-wide v2

    .line 361
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

    .line 362
    :cond_1
    nop

    .line 367
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 362
    return-wide v0

    .line 367
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 363
    :catch_0
    move-exception v2

    .line 364
    .local v2, "e":Landroid/os/RemoteException;
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

    .line 365
    nop

    .line 367
    iget-object v3, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 365
    return-wide v0

    .line 367
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public refreshEncryptionKey()Z
    .locals 5

    .line 411
    const-string v0, "getEncryptionKey"

    invoke-static {v0}, Landroid/bluetooth/BluetoothBATransmitter;->log(Ljava/lang/String;)V

    .line 413
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 414
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 415
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothBATransmitter;->refreshEncryptionKey()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 423
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 415
    return v1

    .line 417
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

    .line 418
    :cond_1
    nop

    .line 423
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 418
    return v0

    .line 423
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 419
    :catch_0
    move-exception v1

    .line 420
    .local v1, "e":Landroid/os/RemoteException;
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

    .line 421
    nop

    .line 423
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 421
    return v0

    .line 423
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method

.method public setBATState(I)Z
    .locals 5
    .param p1, "state"    # I

    .line 269
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

    .line 271
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->lock()V

    .line 272
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    if-eqz v1, :cond_0

    invoke-direct {p0}, Landroid/bluetooth/BluetoothBATransmitter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 273
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mService:Landroid/bluetooth/IBluetoothBATransmitter;

    invoke-interface {v1, p1}, Landroid/bluetooth/IBluetoothBATransmitter;->setBATState(I)Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object v0, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 273
    return v1

    .line 275
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

    .line 276
    :cond_1
    nop

    .line 281
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 276
    return v0

    .line 281
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 277
    :catch_0
    move-exception v1

    .line 278
    .local v1, "e":Landroid/os/RemoteException;
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

    .line 279
    nop

    .line 281
    iget-object v2, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    .line 279
    return v0

    .line 281
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_0
    iget-object v1, p0, Landroid/bluetooth/BluetoothBATransmitter;->mServiceLock:Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;->readLock()Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantReadWriteLock$ReadLock;->unlock()V

    throw v0
.end method
