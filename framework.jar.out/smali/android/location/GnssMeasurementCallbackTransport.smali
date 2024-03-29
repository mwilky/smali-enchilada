.class Landroid/location/GnssMeasurementCallbackTransport;
.super Landroid/location/LocalListenerHelper;
.source "GnssMeasurementCallbackTransport.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/location/LocalListenerHelper<",
        "Landroid/location/GnssMeasurementsEvent$Callback;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListenerTransport:Landroid/location/IGnssMeasurementsListener;

.field private final mLocationManager:Landroid/location/ILocationManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;)V
    .locals 2

    const-string v0, "GnssMeasurementListenerTransport"

    invoke-direct {p0, p1, v0}, Landroid/location/LocalListenerHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/location/GnssMeasurementCallbackTransport$ListenerTransport;-><init>(Landroid/location/GnssMeasurementCallbackTransport;Landroid/location/GnssMeasurementCallbackTransport$1;)V

    iput-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    iput-object p2, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    return-void
.end method


# virtual methods
.method protected registerWithServer()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    invoke-virtual {p0}, Landroid/location/GnssMeasurementCallbackTransport;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/location/ILocationManager;->addGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected unregisterFromServer()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Landroid/location/GnssMeasurementCallbackTransport;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v1, p0, Landroid/location/GnssMeasurementCallbackTransport;->mListenerTransport:Landroid/location/IGnssMeasurementsListener;

    invoke-interface {v0, v1}, Landroid/location/ILocationManager;->removeGnssMeasurementsListener(Landroid/location/IGnssMeasurementsListener;)V

    return-void
.end method
