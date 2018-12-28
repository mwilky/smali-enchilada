.class Landroid/net/arp/OPArpPeer$ProbeTask;
.super Ljava/lang/Object;
.source "OPArpPeer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/arp/OPArpPeer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProbeTask"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/arp/OPArpPeer;


# direct methods
.method private constructor <init>(Landroid/net/arp/OPArpPeer;)V
    .locals 0

    iput-object p1, p0, Landroid/net/arp/OPArpPeer$ProbeTask;->this$0:Landroid/net/arp/OPArpPeer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/net/arp/OPArpPeer;Landroid/net/arp/OPArpPeer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/net/arp/OPArpPeer$ProbeTask;-><init>(Landroid/net/arp/OPArpPeer;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    const-string v0, "arp_OPArpPeer"

    const-string v1, "begin to findDumpTarget"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/arp/OPArpPeer$ProbeTask;->this$0:Landroid/net/arp/OPArpPeer;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Landroid/net/arp/OPArpPeer;->access$000(Landroid/net/arp/OPArpPeer;I)I

    const-string v0, "arp_OPArpPeer"

    const-string v1, "find dumTarget finished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/arp/OPArpPeer$ProbeTask;->this$0:Landroid/net/arp/OPArpPeer;

    invoke-virtual {v0}, Landroid/net/arp/OPArpPeer;->onProbeFinished()V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
