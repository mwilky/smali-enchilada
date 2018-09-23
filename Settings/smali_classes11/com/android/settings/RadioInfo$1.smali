.class Lcom/android/settings/RadioInfo$1;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCapabilitiesChanged(Landroid/net/Network;Landroid/net/NetworkCapabilities;)V
    .locals 3

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkDownstreamBandwidthKbps()I

    move-result v0

    invoke-virtual {p2}, Landroid/net/NetworkCapabilities;->getLinkUpstreamBandwidthKbps()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo$1;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v2, v0, v1}, Lcom/android/settings/RadioInfo;->access$000(Lcom/android/settings/RadioInfo;II)V

    return-void
.end method
