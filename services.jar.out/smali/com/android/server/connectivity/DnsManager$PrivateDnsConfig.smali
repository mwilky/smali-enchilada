.class public Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDnsConfig"
.end annotation


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final ips:[Ljava/net/InetAddress;

.field public final useTls:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-boolean v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    iput-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    iget-object v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    iget-object v0, p1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/net/InetAddress;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    iget-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    if-eqz p2, :cond_1

    move-object v0, p2

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    :goto_1
    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    return-void
.end method


# virtual methods
.method public inStrictMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->useTls:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->hostname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsConfig;->ips:[Ljava/net/InetAddress;

    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
