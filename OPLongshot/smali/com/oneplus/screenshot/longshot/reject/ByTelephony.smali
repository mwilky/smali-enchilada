.class public Lcom/oneplus/screenshot/longshot/reject/ByTelephony;
.super Lcom/oneplus/screenshot/longshot/reject/Reject;
.source "ByTelephony.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/reject/Reject;-><init>(Landroid/content/Context;)V

    const-string v0, "ByTelephony"

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method private isIdle()Z
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "ByTelephony"

    const-string v2, "Error calling ITelephony#isIdle"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public isReject()Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/reject/ByTelephony;->isIdle()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method
