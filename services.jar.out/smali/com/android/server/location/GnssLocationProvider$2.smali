.class Lcom/android/server/location/GnssLocationProvider$2;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$300(Lcom/android/server/location/GnssLocationProvider;)Lcom/android/server/location/NtpTimeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/location/NtpTimeHelper;->onNetworkAvailable()V

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$400(Lcom/android/server/location/GnssLocationProvider;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$500(Lcom/android/server/location/GnssLocationProvider;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/GnssLocationProvider;->access$600(Lcom/android/server/location/GnssLocationProvider;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/location/GnssLocationProvider$2;->this$0:Lcom/android/server/location/GnssLocationProvider;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/location/GnssLocationProvider;->access$700(Lcom/android/server/location/GnssLocationProvider;IILjava/lang/Object;)V

    return-void
.end method
