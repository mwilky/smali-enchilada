.class public Landroid/app/trust/TrustManager;
.super Ljava/lang/Object;
.source "TrustManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/trust/TrustManager$TrustListener;
    }
.end annotation


# static fields
.field private static final DATA_FLAGS:Ljava/lang/String; = "initiatedByUser"

.field private static final DATA_MESSAGE:Ljava/lang/String; = "message"

.field private static final MSG_TRUST_CHANGED:I = 0x1

.field private static final MSG_TRUST_ERROR:I = 0x3

.field private static final MSG_TRUST_MANAGED_CHANGED:I = 0x2

.field private static final TAG:Ljava/lang/String; = "TrustManager"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mService:Landroid/app/trust/ITrustManager;

.field private final mTrustListeners:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/trust/TrustManager$TrustListener;",
            "Landroid/app/trust/ITrustListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/app/trust/TrustManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/app/trust/TrustManager$2;-><init>(Landroid/app/trust/TrustManager;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Landroid/app/trust/ITrustManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/trust/ITrustManager;

    move-result-object v0

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$000(Landroid/app/trust/TrustManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/app/trust/TrustManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method public clearAllFingerprints()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0}, Landroid/app/trust/ITrustManager;->clearAllFingerprints()V
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

.method public isTrustUsuallyManaged(I)Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->isTrustUsuallyManaged(I)Z

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

.method public registerTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 2

    :try_start_0
    new-instance v0, Landroid/app/trust/TrustManager$1;

    invoke-direct {v0, p0, p1}, Landroid/app/trust/TrustManager$1;-><init>(Landroid/app/trust/TrustManager;Landroid/app/trust/TrustManager$TrustListener;)V

    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, v0}, Landroid/app/trust/ITrustManager;->registerTrustListener(Landroid/app/trust/ITrustListener;)V

    iget-object v1, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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

.method public reportEnabledTrustAgentsChanged(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->reportEnabledTrustAgentsChanged(I)V
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

.method public reportKeyguardShowingChanged()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0}, Landroid/app/trust/ITrustManager;->reportKeyguardShowingChanged()V
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

.method public reportUnlockAttempt(ZI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockAttempt(ZI)V
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

.method public reportUnlockLockout(II)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->reportUnlockLockout(II)V
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

.method public setDeviceLockedForUser(IZ)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1, p2}, Landroid/app/trust/ITrustManager;->setDeviceLockedForUser(IZ)V
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

.method public unlockedByFingerprintForUser(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v0, p1}, Landroid/app/trust/ITrustManager;->unlockedByFingerprintForUser(I)V
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

.method public unregisterTrustListener(Landroid/app/trust/TrustManager$TrustListener;)V
    .locals 3

    iget-object v0, p0, Landroid/app/trust/TrustManager;->mTrustListeners:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/ITrustListener;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Landroid/app/trust/TrustManager;->mService:Landroid/app/trust/ITrustManager;

    invoke-interface {v1, v0}, Landroid/app/trust/ITrustManager;->unregisterTrustListener(Landroid/app/trust/ITrustListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    :cond_0
    :goto_0
    return-void
.end method
