.class public final Landroid/telephony/TelephonyScanManager;
.super Ljava/lang/Object;
.source "TelephonyScanManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyScanManager$NetworkScanInfo;,
        Landroid/telephony/TelephonyScanManager$NetworkScanCallback;
    }
.end annotation


# static fields
.field public static final CALLBACK_SCAN_COMPLETE:I = 0x3

.field public static final CALLBACK_SCAN_ERROR:I = 0x2

.field public static final CALLBACK_SCAN_RESULTS:I = 0x1

.field public static final SCAN_RESULT_KEY:Ljava/lang/String; = "scanResult"

.field private static final TAG:Ljava/lang/String; = "TelephonyScanManager"


# instance fields
.field private final mLooper:Landroid/os/Looper;

.field private final mMessenger:Landroid/os/Messenger;

.field private mScanInfo:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/telephony/TelephonyScanManager$NetworkScanInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "TelephonyScanManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    new-instance v1, Landroid/os/Messenger;

    new-instance v2, Landroid/telephony/TelephonyScanManager$1;

    iget-object v3, p0, Landroid/telephony/TelephonyScanManager;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, p0, v3}, Landroid/telephony/TelephonyScanManager$1;-><init>(Landroid/telephony/TelephonyScanManager;Landroid/os/Looper;)V

    invoke-direct {v1, v2}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/TelephonyScanManager;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    return-object v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/TelephonyScanManager;->mScanInfo:Landroid/util/SparseArray;

    new-instance v2, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;

    invoke-direct {v2, p2, p3, p4}, Landroid/telephony/TelephonyScanManager$NetworkScanInfo;-><init>(Landroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)Landroid/telephony/NetworkScan;
    .locals 3

    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyScanManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/telephony/TelephonyScanManager;->mMessenger:Landroid/os/Messenger;

    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telephony/ITelephony;->requestNetworkScan(ILandroid/telephony/NetworkScanRequest;Landroid/os/Messenger;Landroid/os/IBinder;)I

    move-result v1

    invoke-direct {p0, v1, p2, p3, p4}, Landroid/telephony/TelephonyScanManager;->saveScanInfo(ILandroid/telephony/NetworkScanRequest;Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyScanManager$NetworkScanCallback;)V

    new-instance v2, Landroid/telephony/NetworkScan;

    invoke-direct {v2, v1, p1}, Landroid/telephony/NetworkScan;-><init>(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v0

    const-string v1, "TelephonyScanManager"

    const-string/jumbo v2, "requestNetworkScan NPE"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catch_1
    move-exception v0

    const-string v1, "TelephonyScanManager"

    const-string/jumbo v2, "requestNetworkScan RemoteException"

    invoke-static {v1, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    nop

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
