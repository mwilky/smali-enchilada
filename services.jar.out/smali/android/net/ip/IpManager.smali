.class public Landroid/net/ip/IpManager;
.super Landroid/net/ip/IpClient;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$Callback;,
        Landroid/net/ip/IpManager$InitialConfiguration;,
        Landroid/net/ip/IpManager$ProvisioningConfiguration;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpManager$Callback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/net/ip/IpClient;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/net/ip/IpClient$Callback;)V

    return-void
.end method

.method public static buildProvisioningConfiguration()Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    .locals 1

    new-instance v0, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;

    invoke-direct {v0}, Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public startProvisioning(Landroid/net/ip/IpManager$ProvisioningConfiguration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/net/ip/IpClient;->startProvisioning(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    return-void
.end method
