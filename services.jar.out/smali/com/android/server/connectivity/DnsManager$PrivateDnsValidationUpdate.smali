.class public Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;
.super Ljava/lang/Object;
.source "DnsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DnsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrivateDnsValidationUpdate"
.end annotation


# instance fields
.field public final hostname:Ljava/lang/String;

.field public final ipAddress:Ljava/net/InetAddress;

.field public final netId:I

.field public final validated:Z


# direct methods
.method public constructor <init>(ILjava/net/InetAddress;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->netId:I

    iput-object p2, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->ipAddress:Ljava/net/InetAddress;

    iput-object p3, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->hostname:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/android/server/connectivity/DnsManager$PrivateDnsValidationUpdate;->validated:Z

    return-void
.end method
