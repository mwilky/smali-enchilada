.class public final Landroid/security/net/config/Domain;
.super Ljava/lang/Object;
.source "Domain.java"


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final subdomainsIncluded:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    iput-boolean p2, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    return-void

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Hostname must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/security/net/config/Domain;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/security/net/config/Domain;

    iget-boolean v3, v1, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    iget-boolean v4, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-ne v3, v4, :cond_2

    iget-object v3, v1, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    iget-object v4, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Landroid/security/net/config/Domain;->hostname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-boolean v1, p0, Landroid/security/net/config/Domain;->subdomainsIncluded:Z

    if-eqz v1, :cond_0

    const/16 v1, 0x4cf

    goto :goto_0

    :cond_0
    const/16 v1, 0x4d5

    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method
