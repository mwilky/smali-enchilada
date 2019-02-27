.class public Landroid/net/lowpan/LowpanInterface;
.super Ljava/lang/Object;
.source "LowpanInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/lowpan/LowpanInterface$Callback;
    }
.end annotation


# static fields
.field public static final EMPTY_PARTITION_ID:Ljava/lang/String; = ""

.field public static final NETWORK_TYPE_THREAD_V1:Ljava/lang/String; = "org.threadgroup.thread.v1"

.field public static final ROLE_COORDINATOR:Ljava/lang/String; = "coordinator"

.field public static final ROLE_DETACHED:Ljava/lang/String; = "detached"

.field public static final ROLE_END_DEVICE:Ljava/lang/String; = "end-device"

.field public static final ROLE_LEADER:Ljava/lang/String; = "leader"

.field public static final ROLE_ROUTER:Ljava/lang/String; = "router"

.field public static final ROLE_SLEEPY_END_DEVICE:Ljava/lang/String; = "sleepy-end-device"

.field public static final ROLE_SLEEPY_ROUTER:Ljava/lang/String; = "sleepy-router"

.field public static final STATE_ATTACHED:Ljava/lang/String; = "attached"

.field public static final STATE_ATTACHING:Ljava/lang/String; = "attaching"

.field public static final STATE_COMMISSIONING:Ljava/lang/String; = "commissioning"

.field public static final STATE_FAULT:Ljava/lang/String; = "fault"

.field public static final STATE_OFFLINE:Ljava/lang/String; = "offline"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mBinder:Landroid/net/lowpan/ILowpanInterface;

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/lowpan/ILowpanInterfaceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mLooper:Landroid/os/Looper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Landroid/net/lowpan/LowpanInterface;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/lowpan/ILowpanInterface;Landroid/os/Looper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    iput-object p2, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iput-object p3, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    return-void
.end method

.method static synthetic access$000(Landroid/net/lowpan/LowpanInterface;)Landroid/os/Looper;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public addExternalRoute(Landroid/net/IpPrefix;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addExternalRoute(Landroid/net/IpPrefix;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1, p2}, Landroid/net/lowpan/ILowpanInterface;->addOnMeshPrefix(Landroid/net/IpPrefix;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public attach(Landroid/net/lowpan/LowpanProvision;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->attach(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public createScanner()Landroid/net/lowpan/LowpanScanner;
    .locals 2

    new-instance v0, Landroid/net/lowpan/LowpanScanner;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-direct {v0, v1}, Landroid/net/lowpan/LowpanScanner;-><init>(Landroid/net/lowpan/ILowpanInterface;)V

    return-object v0
.end method

.method public form(Landroid/net/lowpan/LowpanProvision;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->form(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkAddresses()[Landroid/net/LinkAddress;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLinkAddresses()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    new-array v1, v1, [Landroid/net/LinkAddress;

    const/4 v2, 0x0

    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v0, v4

    add-int/lit8 v6, v2, 0x1

    new-instance v7, Landroid/net/LinkAddress;

    invoke-direct {v7, v5}, Landroid/net/LinkAddress;-><init>(Ljava/lang/String;)V

    aput-object v7, v1, v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    move v2, v6

    goto :goto_0

    :cond_0
    return-object v1

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLinkNetworks()[Landroid/net/IpPrefix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLinkNetworks()[Landroid/net/IpPrefix;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLowpanCredential()Landroid/net/lowpan/LowpanCredential;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanCredential()Landroid/net/lowpan/LowpanCredential;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getLowpanIdentity()Landroid/net/lowpan/LowpanIdentity;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Landroid/net/lowpan/LowpanIdentity;

    invoke-direct {v1}, Landroid/net/lowpan/LowpanIdentity;-><init>()V

    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getName()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const-string v1, ""

    return-object v1
.end method

.method public getPartitionId()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getPartitionId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const-string v1, ""

    return-object v1
.end method

.method public getRole()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getRole()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "detached"

    return-object v1
.end method

.method public getService()Landroid/net/lowpan/ILowpanInterface;
    .locals 1

    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    return-object v0
.end method

.method public getState()Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getState()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const-string v1, "fault"

    return-object v1
.end method

.method public getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedChannels()[Landroid/net/lowpan/LowpanChannelInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public getSupportedNetworkTypes()[Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->getSupportedNetworkTypes()[Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public isCommissioned()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isCommissioned()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isConnected()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isConnected()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isEnabled()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public isUp()Z
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->isUp()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    const/4 v1, 0x0

    return v1
.end method

.method public join(Landroid/net/lowpan/LowpanProvision;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->join(Landroid/net/lowpan/LowpanProvision;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public leave()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->leave()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/lowpan/LowpanInterface;->registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V

    return-void
.end method

.method public registerCallback(Landroid/net/lowpan/LowpanInterface$Callback;Landroid/os/Handler;)V
    .locals 4

    new-instance v0, Landroid/net/lowpan/LowpanInterface$1;

    invoke-direct {v0, p0, p2, p1}, Landroid/net/lowpan/LowpanInterface$1;-><init>(Landroid/net/lowpan/LowpanInterface;Landroid/os/Handler;Landroid/net/lowpan/LowpanInterface$Callback;)V

    :try_start_0
    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v1, v0}, Landroid/net/lowpan/ILowpanInterface;->addListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2
.end method

.method public removeExternalRoute(Landroid/net/IpPrefix;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->removeExternalRoute(Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->removeOnMeshPrefix(Landroid/net/IpPrefix;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Landroid/net/lowpan/LowpanInterface;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/os/ServiceSpecificException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0}, Landroid/net/lowpan/ILowpanInterface;->reset()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public setEnabled(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)Landroid/net/lowpan/LowpanCommissioningSession;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/lowpan/LowpanException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v0, p1}, Landroid/net/lowpan/ILowpanInterface;->startCommissioningSession(Landroid/net/lowpan/LowpanBeaconInfo;)V

    new-instance v0, Landroid/net/lowpan/LowpanCommissioningSession;

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mLooper:Landroid/os/Looper;

    invoke-direct {v0, v1, p1, v2}, Landroid/net/lowpan/LowpanCommissioningSession;-><init>(Landroid/net/lowpan/ILowpanInterface;Landroid/net/lowpan/LowpanBeaconInfo;Landroid/os/Looper;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Landroid/net/lowpan/LowpanException;->rethrowFromServiceSpecificException(Landroid/os/ServiceSpecificException;)Landroid/net/lowpan/LowpanException;

    move-result-object v1

    throw v1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public unregisterCallback(Landroid/net/lowpan/LowpanInterface$Callback;)V
    .locals 5

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    iget-object v1, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/lowpan/ILowpanInterfaceListener;

    if-eqz v2, :cond_0

    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mListenerMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v3, p0, Landroid/net/lowpan/LowpanInterface;->mBinder:Landroid/net/lowpan/ILowpanInterface;

    invoke-interface {v3, v2}, Landroid/net/lowpan/ILowpanInterface;->removeListener(Landroid/net/lowpan/ILowpanInterfaceListener;)V
    :try_end_1
    .catch Landroid/os/DeadObjectException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v4

    throw v4

    :catch_1
    move-exception v3

    :goto_0
    nop

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method
