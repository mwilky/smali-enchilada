.class Landroid/net/ip/IpReachabilityMonitor$Dependencies$1;
.super Ljava/lang/Object;
.source "IpReachabilityMonitor.java"

# interfaces
.implements Landroid/net/ip/IpReachabilityMonitor$Dependencies;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ip/IpReachabilityMonitor$Dependencies;->makeDefault(Landroid/content/Context;Ljava/lang/String;)Landroid/net/ip/IpReachabilityMonitor$Dependencies;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$lock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method constructor <init>(Landroid/os/PowerManager$WakeLock;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ip/IpReachabilityMonitor$Dependencies$1;->val$lock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public acquireWakeLock(J)V
    .locals 1

    iget-object v0, p0, Landroid/net/ip/IpReachabilityMonitor$Dependencies$1;->val$lock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, p1, p2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    return-void
.end method
