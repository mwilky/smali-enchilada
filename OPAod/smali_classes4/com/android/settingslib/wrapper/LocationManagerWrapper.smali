.class public Lcom/android/settingslib/wrapper/LocationManagerWrapper;
.super Ljava/lang/Object;
.source "LocationManagerWrapper.java"


# instance fields
.field private mLocationManager:Landroid/location/LocationManager;


# direct methods
.method public constructor <init>(Landroid/location/LocationManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    return-void
.end method


# virtual methods
.method public getLocationManager()Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    return-object v0
.end method

.method public isLocationEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v0

    return v0
.end method

.method public isLocationEnabledForUser(Landroid/os/UserHandle;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isLocationEnabledForUser(Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLocationEnabledForUser(ZLandroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public setProviderEnabledForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/wrapper/LocationManagerWrapper;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p1, p2, p3}, Landroid/location/LocationManager;->setProviderEnabledForUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    return-void
.end method
