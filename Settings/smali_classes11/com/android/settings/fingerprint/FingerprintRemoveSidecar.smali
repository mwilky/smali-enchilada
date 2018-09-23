.class public Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "FingerprintRemoveSidecar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;,
        Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "FingerprintRemoveSidecar"


# instance fields
.field mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

.field private mFingerprintsRemoved:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

.field private mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$1;-><init>(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;)Ljava/util/Queue;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;Landroid/hardware/fingerprint/Fingerprint;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x3a6

    return v0
.end method

.method final inProgress()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method final isRemovingFingerprint(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->inProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->setRetainInstance(Z)V

    return-void
.end method

.method public setFingerprintManager(Landroid/hardware/fingerprint/FingerprintManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method public setListener(Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintsRemoved:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-interface {p1, v1}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalSucceeded(Landroid/hardware/fingerprint/Fingerprint;)V

    goto :goto_1

    :cond_0
    instance-of v1, v0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;

    iget-object v2, v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;->fingerprint:Landroid/hardware/fingerprint/Fingerprint;

    iget v3, v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;->errMsgId:I

    iget-object v4, v1, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$RemovalError;->errString:Ljava/lang/CharSequence;

    invoke-interface {p1, v2, v3, v4}, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;->onRemovalError(Landroid/hardware/fingerprint/Fingerprint;ILjava/lang/CharSequence;)V

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mListener:Lcom/android/settings/fingerprint/FingerprintRemoveSidecar$Listener;

    return-void
.end method

.method public startRemove(Landroid/hardware/fingerprint/Fingerprint;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    if-eqz v0, :cond_0

    const-string v0, "FingerprintRemoveSidecar"

    const-string v1, "Remove already in progress"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v0, -0x2710

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p2}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    :cond_1
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintRemoving:Landroid/hardware/fingerprint/Fingerprint;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintRemoveSidecar;->mRemoveCallback:Landroid/hardware/fingerprint/FingerprintManager$RemovalCallback;

    invoke-virtual {v0, p1, p2, v1}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    return-void
.end method
