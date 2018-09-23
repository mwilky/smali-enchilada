.class public Landroid/net/ip/IpManager$ProvisioningConfiguration;
.super Landroid/net/ip/IpClient$ProvisioningConfiguration;
.source "IpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ip/IpManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProvisioningConfiguration"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ip/IpManager$ProvisioningConfiguration$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/ip/IpClient$ProvisioningConfiguration;-><init>(Landroid/net/ip/IpClient$ProvisioningConfiguration;)V

    return-void
.end method
