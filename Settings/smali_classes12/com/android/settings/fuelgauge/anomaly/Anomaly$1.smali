.class Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;
.super Ljava/lang/Object;
.source "Anomaly.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/anomaly/Anomaly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .locals 2

    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly;-><init>(Landroid/os/Parcel;Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;->createFromParcel(Landroid/os/Parcel;)Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/android/settings/fuelgauge/anomaly/Anomaly;
    .locals 1

    new-array v0, p1, [Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/anomaly/Anomaly$1;->newArray(I)[Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object p1

    return-object p1
.end method
