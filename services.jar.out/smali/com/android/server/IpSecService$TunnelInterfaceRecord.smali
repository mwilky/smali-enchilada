.class final Lcom/android/server/IpSecService$TunnelInterfaceRecord;
.super Lcom/android/server/IpSecService$OwnedResourceRecord;
.source "IpSecService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/IpSecService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "TunnelInterfaceRecord"
.end annotation


# instance fields
.field private final mIkey:I

.field private final mInterfaceName:Ljava/lang/String;

.field private final mLocalAddress:Ljava/lang/String;

.field private final mOkey:I

.field private final mRemoteAddress:Ljava/lang/String;

.field private final mUnderlyingNetwork:Landroid/net/Network;

.field final synthetic this$0:Lcom/android/server/IpSecService;


# direct methods
.method constructor <init>(Lcom/android/server/IpSecService;ILjava/lang/String;Landroid/net/Network;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-direct {p0, p1, p2}, Lcom/android/server/IpSecService$OwnedResourceRecord;-><init>(Lcom/android/server/IpSecService;I)V

    iput-object p3, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    iput-object p5, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    iput p7, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    iput p8, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/IpSecService$TunnelInterfaceRecord;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public freeUnderlyingResources()V
    .locals 15

    :try_start_0
    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-static {v0}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/net/INetd;->removeVirtualTunnelInterface(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/IpSecService;->access$100()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v7, v0, v3

    invoke-static {}, Lcom/android/server/IpSecService;->access$200()[I

    move-result-object v11

    array-length v12, v11

    move v13, v2

    :goto_1
    if-ge v13, v12, :cond_1

    aget v4, v11, v13

    move v14, v4

    if-nez v14, :cond_0

    iget v4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    goto :goto_2

    :cond_0
    iget v4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    :goto_2
    move v9, v4

    iget-object v4, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    invoke-static {v4}, Lcom/android/server/IpSecService;->access$000(Lcom/android/server/IpSecService;)Lcom/android/server/IpSecService$IpSecServiceConfiguration;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/IpSecService$IpSecServiceConfiguration;->getNetdInstance()Landroid/net/INetd;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v10, -0x1

    move v6, v14

    move-object v8, v7

    invoke-interface/range {v4 .. v10}, Landroid/net/INetd;->ipSecDeleteSecurityPolicy(IILjava/lang/String;Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "IpSecService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to delete VTI with interface name: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " and id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mResourceId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/IpSecService$ResourceTracker;->give()V

    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->this$0:Lcom/android/server/IpSecService;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService;->releaseNetId(I)V

    return-void
.end method

.method public getIkey()I
    .locals 1

    iget v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    return v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getOkey()I
    .locals 1

    iget v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method protected getResourceTracker()Lcom/android/server/IpSecService$ResourceTracker;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/IpSecService$UserRecord;->mTunnelQuotaTracker:Lcom/android/server/IpSecService$ResourceTracker;

    return-object v0
.end method

.method public getUnderlyingNetwork()Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public invalidate()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->getUserRecord()Lcom/android/server/IpSecService$UserRecord;

    move-result-object v0

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mResourceId:I

    invoke-virtual {v0, v1}, Lcom/android/server/IpSecService$UserRecord;->removeTunnelInterfaceRecord(I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{super="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/server/IpSecService$OwnedResourceRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mInterfaceName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mInterfaceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUnderlyingNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mUnderlyingNetwork:Landroid/net/Network;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mLocalAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mLocalAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mRemoteAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mRemoteAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mIkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mIkey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mOkey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/IpSecService$TunnelInterfaceRecord;->mOkey:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
