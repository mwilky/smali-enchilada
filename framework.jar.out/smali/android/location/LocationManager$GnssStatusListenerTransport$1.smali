.class Landroid/location/LocationManager$GnssStatusListenerTransport$1;
.super Landroid/location/GnssStatus$Callback;
.source "LocationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/location/LocationManager$GnssStatusListenerTransport;-><init>(Landroid/location/LocationManager;Landroid/location/GpsStatus$Listener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

.field final synthetic val$this$0:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Landroid/location/LocationManager$GnssStatusListenerTransport;Landroid/location/LocationManager;)V
    .locals 0
    .param p1, "this$1"    # Landroid/location/LocationManager$GnssStatusListenerTransport;

    .line 1785
    iput-object p1, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    iput-object p2, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->val$this$0:Landroid/location/LocationManager;

    invoke-direct {p0}, Landroid/location/GnssStatus$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstFix(I)V
    .locals 2
    .param p1, "ttff"    # I

    .line 1798
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$800(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 1799
    return-void
.end method

.method public onSatelliteStatusChanged(Landroid/location/GnssStatus;)V
    .locals 2
    .param p1, "status"    # Landroid/location/GnssStatus;

    .line 1803
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$800(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 1804
    return-void
.end method

.method public onStarted()V
    .locals 2

    .line 1788
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$800(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 1789
    return-void
.end method

.method public onStopped()V
    .locals 2

    .line 1793
    iget-object v0, p0, Landroid/location/LocationManager$GnssStatusListenerTransport$1;->this$1:Landroid/location/LocationManager$GnssStatusListenerTransport;

    invoke-static {v0}, Landroid/location/LocationManager$GnssStatusListenerTransport;->access$800(Landroid/location/LocationManager$GnssStatusListenerTransport;)Landroid/location/GpsStatus$Listener;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/location/GpsStatus$Listener;->onGpsStatusChanged(I)V

    .line 1794
    return-void
.end method
