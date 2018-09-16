.class final Lcom/android/server/fingerprint/FingerprintService$FingerprintConfigCallback;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Lcom/oneplus/onlineconfig/FingerprintConfig$ConfigChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FingerprintConfigCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method private constructor <init>(Lcom/android/server/fingerprint/FingerprintService;)V
    .locals 0

    .line 1929
    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintConfigCallback;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Lcom/android/server/fingerprint/FingerprintService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/fingerprint/FingerprintService;
    .param p2, "x1"    # Lcom/android/server/fingerprint/FingerprintService$1;

    .line 1929
    invoke-direct {p0, p1}, Lcom/android/server/fingerprint/FingerprintService$FingerprintConfigCallback;-><init>(Lcom/android/server/fingerprint/FingerprintService;)V

    return-void
.end method


# virtual methods
.method public onFARFRRChanged(I)V
    .locals 4
    .param p1, "level"    # I

    .line 1932
    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$FingerprintConfigCallback;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v0}, Lcom/android/server/fingerprint/FingerprintService;->getExtFingerprintDaemon()Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;

    move-result-object v0

    .line 1933
    .local v0, "daemon":Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;
    if-eqz v0, :cond_0

    .line 1935
    :try_start_0
    const-string v1, "FingerprintService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setParam , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    invoke-interface {v0, p1}, Lvendor/oneplus/fingerprint/extension/V1_0/IVendorFingerprintExtensions;->setParam(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1940
    goto :goto_0

    .line 1938
    :catch_0
    move-exception v1

    .line 1939
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "FingerprintService"

    const-string v3, "getStatus failed"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1942
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_0
    :goto_0
    return-void
.end method
