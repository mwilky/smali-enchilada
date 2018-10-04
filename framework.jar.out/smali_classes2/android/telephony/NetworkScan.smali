.class public Landroid/telephony/NetworkScan;
.super Ljava/lang/Object;
.source "NetworkScan.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/NetworkScan$ScanErrorCode;
    }
.end annotation


# static fields
.field public static final ERROR_INTERRUPTED:I = 0x2712

.field public static final ERROR_INVALID_SCAN:I = 0x2

.field public static final ERROR_INVALID_SCANID:I = 0x2711

.field public static final ERROR_MODEM_ERROR:I = 0x1

.field public static final ERROR_MODEM_UNAVAILABLE:I = 0x3

.field public static final ERROR_RADIO_INTERFACE_ERROR:I = 0x2710

.field public static final ERROR_UNSUPPORTED:I = 0x4

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NetworkScan"


# instance fields
.field private final mScanId:I

.field private final mSubId:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/telephony/NetworkScan;->mScanId:I

    iput p2, p0, Landroid/telephony/NetworkScan;->mSubId:I

    return-void
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


# virtual methods
.method public stop()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Landroid/telephony/NetworkScan;->stopScan()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Landroid/os/RemoteException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to stop the network scan with id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Landroid/telephony/NetworkScan;->mScanId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/RemoteException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public stopScan()V
    .locals 4

    invoke-direct {p0}, Landroid/telephony/NetworkScan;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "NetworkScan"

    const-string v2, "Failed to get the ITelephony instance."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget v1, p0, Landroid/telephony/NetworkScan;->mSubId:I

    iget v2, p0, Landroid/telephony/NetworkScan;->mScanId:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/ITelephony;->stopNetworkScan(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "NetworkScan"

    const-string/jumbo v3, "stopNetworkScan  RuntimeException"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "NetworkScan"

    const-string/jumbo v3, "stopNetworkScan  RemoteException"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method
