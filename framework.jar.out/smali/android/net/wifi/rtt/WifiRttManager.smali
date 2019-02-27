.class public Landroid/net/wifi/rtt/WifiRttManager;
.super Ljava/lang/Object;
.source "WifiRttManager.java"


# static fields
.field public static final ACTION_WIFI_RTT_STATE_CHANGED:Ljava/lang/String; = "android.net.wifi.rtt.action.WIFI_RTT_STATE_CHANGED"

.field private static final TAG:Ljava/lang/String; = "WifiRttManager"

.field private static final VDBG:Z = false


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Landroid/net/wifi/rtt/IWifiRttManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/rtt/IWifiRttManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/wifi/rtt/WifiRttManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    return-void
.end method


# virtual methods
.method public cancelRanging(Landroid/os/WorkSource;)V
    .locals 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    invoke-interface {v0, p1}, Landroid/net/wifi/rtt/IWifiRttManager;->cancelRanging(Landroid/os/WorkSource;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isAvailable()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    invoke-interface {v0}, Landroid/net/wifi/rtt/IWifiRttManager;->isAvailable()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startRanging(Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Landroid/net/wifi/rtt/WifiRttManager;->startRanging(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V

    return-void
.end method

.method public startRanging(Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V
    .locals 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    if-eqz p3, :cond_1

    if-eqz p4, :cond_0

    new-instance v1, Landroid/os/Binder;

    invoke-direct {v1}, Landroid/os/Binder;-><init>()V

    :try_start_0
    iget-object v0, p0, Landroid/net/wifi/rtt/WifiRttManager;->mService:Landroid/net/wifi/rtt/IWifiRttManager;

    iget-object v2, p0, Landroid/net/wifi/rtt/WifiRttManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v5, Landroid/net/wifi/rtt/WifiRttManager$1;

    invoke-direct {v5, p0, p3, p4}, Landroid/net/wifi/rtt/WifiRttManager$1;-><init>(Landroid/net/wifi/rtt/WifiRttManager;Ljava/util/concurrent/Executor;Landroid/net/wifi/rtt/RangingResultCallback;)V

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Landroid/net/wifi/rtt/IWifiRttManager;->startRanging(Landroid/os/IBinder;Ljava/lang/String;Landroid/os/WorkSource;Landroid/net/wifi/rtt/RangingRequest;Landroid/net/wifi/rtt/IRttCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null callback provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Null executor provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
