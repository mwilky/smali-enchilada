.class Landroid/bluetooth/le/AdvertiseData$1;
.super Ljava/lang/Object;
.source "AdvertiseData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/bluetooth/le/AdvertiseData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;
    .locals 8

    new-instance v0, Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-direct {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;-><init>()V

    sget-object v1, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/ParcelUuid;

    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v2, :cond_1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v5

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/bluetooth/le/AdvertiseData$Builder;->addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    move v5, v3

    :goto_2
    if-ge v5, v4, :cond_2

    sget-object v6, Landroid/os/ParcelUuid;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v6}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/ParcelUuid;

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/bluetooth/le/AdvertiseData$Builder;->addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    move v5, v6

    goto :goto_3

    :cond_3
    move v5, v3

    :goto_3
    invoke-virtual {v0, v5}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v5

    if-ne v5, v6, :cond_4

    move v3, v6

    nop

    :cond_4
    invoke-virtual {v0, v3}, Landroid/bluetooth/le/AdvertiseData$Builder;->setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;

    invoke-virtual {v0}, Landroid/bluetooth/le/AdvertiseData$Builder;->build()Landroid/bluetooth/le/AdvertiseData;

    move-result-object v3

    return-object v3
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->createFromParcel(Landroid/os/Parcel;)Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/bluetooth/le/AdvertiseData;
    .locals 1

    new-array v0, p1, [Landroid/bluetooth/le/AdvertiseData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/bluetooth/le/AdvertiseData$1;->newArray(I)[Landroid/bluetooth/le/AdvertiseData;

    move-result-object p1

    return-object p1
.end method
