.class public Landroid/telephony/ims/compat/ImsService;
.super Landroid/app/Service;
.source "ImsService.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImsService(Compat)"

.field public static final SERVICE_INTERFACE:Ljava/lang/String; = "android.telephony.ims.compat.ImsService"


# instance fields
.field private final mFeaturesBySlot:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;>;"
        }
    .end annotation
.end field

.field protected final mImsServiceController:Landroid/os/IBinder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    new-instance v0, Landroid/telephony/ims/compat/ImsService$1;

    invoke-direct {v0, p0}, Landroid/telephony/ims/compat/ImsService$1;-><init>(Landroid/telephony/ims/compat/ImsService;)V

    iput-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-void
.end method

.method static synthetic access$000(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->createEmergencyMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->createMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Landroid/telephony/ims/compat/ImsService;ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/telephony/ims/compat/ImsService;->createRcsFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/telephony/ims/compat/ImsService;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/ims/compat/ImsService;->removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    return-void
.end method

.method private addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V
    .locals 3

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private createEmergencyMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private createMMTelFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsMMTelFeature;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/MMTelFeature;->getBinder()Lcom/android/ims/internal/IImsMMTelFeature;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private createRcsFeatureInternal(ILcom/android/ims/internal/IImsFeatureStatusCallback;)Lcom/android/ims/internal/IImsRcsFeature;
    .locals 2

    invoke-virtual {p0, p1}, Landroid/telephony/ims/compat/ImsService;->onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1, p2}, Landroid/telephony/ims/compat/ImsService;->setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-virtual {v0}, Landroid/telephony/ims/compat/feature/RcsFeature;->getBinder()Lcom/android/ims/internal/IImsRcsFeature;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private removeImsFeature(IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 6

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    const-string v2, "ImsService(Compat)"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not remove ImsFeature. No ImsFeatures exist on slot "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/ims/compat/feature/ImsFeature;

    if-nez v2, :cond_1

    const-string v3, "ImsService(Compat)"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not remove ImsFeature. No feature with type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " exists on slot "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v2, p3}, Landroid/telephony/ims/compat/feature/ImsFeature;->removeImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-virtual {v2}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureRemoved()V

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setupFeature(Landroid/telephony/ims/compat/feature/ImsFeature;IILcom/android/ims/internal/IImsFeatureStatusCallback;)V
    .locals 0

    invoke-virtual {p1, p0}, Landroid/telephony/ims/compat/feature/ImsFeature;->setContext(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Landroid/telephony/ims/compat/feature/ImsFeature;->setSlotId(I)V

    invoke-virtual {p1, p4}, Landroid/telephony/ims/compat/feature/ImsFeature;->addImsFeatureStatusCallback(Lcom/android/ims/internal/IImsFeatureStatusCallback;)V

    invoke-direct {p0, p2, p3, p1}, Landroid/telephony/ims/compat/ImsService;->addImsFeature(IILandroid/telephony/ims/compat/feature/ImsFeature;)V

    invoke-virtual {p1}, Landroid/telephony/ims/compat/feature/ImsFeature;->onFeatureReady()V

    return-void
.end method


# virtual methods
.method public getFeatures(I)Landroid/util/SparseArray;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Landroid/telephony/ims/compat/feature/ImsFeature;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mFeaturesBySlot:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    const-string v0, "android.telephony.ims.compat.ImsService"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ImsService(Compat)"

    const-string v1, "ImsService(Compat) Bound."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/telephony/ims/compat/ImsService;->mImsServiceController:Landroid/os/IBinder;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateEmergencyMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateMMTelImsFeature(I)Landroid/telephony/ims/compat/feature/MMTelFeature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreateRcsFeature(I)Landroid/telephony/ims/compat/feature/RcsFeature;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
