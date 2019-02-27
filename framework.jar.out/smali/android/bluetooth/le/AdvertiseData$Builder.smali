.class public final Landroid/bluetooth/le/AdvertiseData$Builder;
.super Ljava/lang/Object;
.source "AdvertiseData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/bluetooth/le/AdvertiseData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mIncludeDeviceName:Z

.field private mIncludeTxPowerLevel:Z

.field private mManufacturerSpecificData:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[B>;"
        }
    .end annotation
.end field

.field private mServiceData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/os/ParcelUuid;",
            "[B>;"
        }
    .end annotation
.end field

.field private mServiceUuids:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/ParcelUuid;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    .line 201
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    .line 202
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public addManufacturerData(I[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    .locals 3
    .param p1, "manufacturerId"    # I
    .param p2, "manufacturerSpecificData"    # [B

    .line 250
    if-ltz p1, :cond_1

    .line 254
    if-eqz p2, :cond_0

    .line 257
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 258
    return-object p0

    .line 255
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "manufacturerSpecificData is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 251
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid manufacturerId - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addServiceData(Landroid/os/ParcelUuid;[B)Landroid/bluetooth/le/AdvertiseData$Builder;
    .locals 2
    .param p1, "serviceDataUuid"    # Landroid/os/ParcelUuid;
    .param p2, "serviceData"    # [B

    .line 229
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 233
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    return-object p0

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serviceDataUuid or serviceDataUuid is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addServiceUuid(Landroid/os/ParcelUuid;)Landroid/bluetooth/le/AdvertiseData$Builder;
    .locals 2
    .param p1, "serviceUuid"    # Landroid/os/ParcelUuid;

    .line 213
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    return-object p0

    .line 214
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "serivceUuids are null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public build()Landroid/bluetooth/le/AdvertiseData;
    .locals 8

    .line 282
    new-instance v7, Landroid/bluetooth/le/AdvertiseData;

    iget-object v1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceUuids:Ljava/util/List;

    iget-object v2, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mManufacturerSpecificData:Landroid/util/SparseArray;

    iget-object v3, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mServiceData:Ljava/util/Map;

    iget-boolean v4, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    iget-boolean v5, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeDeviceName:Z

    const/4 v6, 0x0

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Landroid/bluetooth/le/AdvertiseData;-><init>(Ljava/util/List;Landroid/util/SparseArray;Ljava/util/Map;ZZLandroid/bluetooth/le/AdvertiseData$1;)V

    return-object v7
.end method

.method public setIncludeDeviceName(Z)Landroid/bluetooth/le/AdvertiseData$Builder;
    .locals 0
    .param p1, "includeDeviceName"    # Z

    .line 274
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeDeviceName:Z

    .line 275
    return-object p0
.end method

.method public setIncludeTxPowerLevel(Z)Landroid/bluetooth/le/AdvertiseData$Builder;
    .locals 0
    .param p1, "includeTxPowerLevel"    # Z

    .line 266
    iput-boolean p1, p0, Landroid/bluetooth/le/AdvertiseData$Builder;->mIncludeTxPowerLevel:Z

    .line 267
    return-object p0
.end method
