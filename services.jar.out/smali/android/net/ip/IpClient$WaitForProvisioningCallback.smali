.class public Landroid/net/ip/IpClient$WaitForProvisioningCallback;
.super Landroid/net/ip/IpClient$Callback;
.source "IpClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WaitForProvisioningCallback"
.end annotation


# instance fields
.field private final mCV:Landroid/os/ConditionVariable;

.field private mCallbackLinkProperties:Landroid/net/LinkProperties;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/net/ip/IpClient$Callback;-><init>()V

    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    iput-object v0, p0, Landroid/net/ip/IpClient$WaitForProvisioningCallback;->mCV:Landroid/os/ConditionVariable;

    return-void
.end method


# virtual methods
.method public onProvisioningFailure(Landroid/net/LinkProperties;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/net/ip/IpClient$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpClient$WaitForProvisioningCallback;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public onProvisioningSuccess(Landroid/net/LinkProperties;)V
    .locals 1

    iput-object p1, p0, Landroid/net/ip/IpClient$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    iget-object v0, p0, Landroid/net/ip/IpClient$WaitForProvisioningCallback;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    return-void
.end method

.method public waitForProvisioning()Landroid/net/LinkProperties;
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpClient$WaitForProvisioningCallback;->mCV:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    iget-object v0, p0, Landroid/net/ip/IpClient$WaitForProvisioningCallback;->mCallbackLinkProperties:Landroid/net/LinkProperties;

    return-object v0
.end method
