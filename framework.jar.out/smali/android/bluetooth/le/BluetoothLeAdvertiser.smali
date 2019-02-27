.class public final Landroid/bluetooth/le/BluetoothLeAdvertiser;
.super Ljava/lang/Object;
.source "BluetoothLeAdvertiser.java"


# static fields
.field private static final FLAGS_FIELD_BYTES:I = 0x3

.field private static final MANUFACTURER_SPECIFIC_DATA_LENGTH:I = 0x2

.field private static final MAX_ADVERTISING_DATA_BYTES:I = 0x672

.field private static final MAX_LEGACY_ADVERTISING_DATA_BYTES:I = 0x1f

.field private static final OVERHEAD_BYTES_PER_FIELD:I = 0x2

.field private static final TAG:Ljava/lang/String; = "BluetoothLeAdvertiser"


# instance fields
.field private final mAdvertisingSets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/bluetooth/le/AdvertisingSet;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

.field private final mCallbackWrappers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            "Landroid/bluetooth/le/IAdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mLegacyAdvertisers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/bluetooth/le/AdvertiseCallback;",
            "Landroid/bluetooth/le/AdvertisingSetCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/bluetooth/IBluetoothManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    iput-object p1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    return-void
.end method

.method static synthetic access$100(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-void
.end method

.method static synthetic access$200(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Landroid/bluetooth/IBluetoothManager;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    return-object v0
.end method

.method static synthetic access$400(Landroid/bluetooth/le/BluetoothLeAdvertiser;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    return-object v0
.end method

.method private byteLength([B)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p1

    :goto_0
    return v0
.end method

.method private postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$4;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V
    .locals 1

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;

    invoke-direct {v0, p0, p2, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser$3;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postStartSuccess(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V
    .locals 2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mHandler:Landroid/os/Handler;

    new-instance v1, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;

    invoke-direct {v1, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$5;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I
    .locals 9

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v0

    :goto_0
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x2

    if-eqz v2, :cond_7

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceUuids()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/ParcelUuid;

    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->is16BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-static {v7}, Landroid/bluetooth/BluetoothUuid;->is32BitUuid(Landroid/os/ParcelUuid;)Z

    move-result v8

    if-eqz v8, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v5, v5, 0x1

    :goto_2
    goto :goto_1

    :cond_4
    if-eqz v2, :cond_5

    mul-int/lit8 v6, v2, 0x2

    add-int/2addr v6, v3

    add-int/2addr v1, v6

    :cond_5
    if-eqz v4, :cond_6

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v3

    add-int/2addr v1, v6

    :cond_6
    if-eqz v5, :cond_7

    mul-int/lit8 v6, v5, 0x10

    add-int/2addr v6, v3

    add-int/2addr v1, v6

    :cond_7
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/ParcelUuid;

    invoke-static {v4}, Landroid/bluetooth/BluetoothUuid;->uuidToBytes(Landroid/os/ParcelUuid;)[B

    move-result-object v5

    array-length v5, v5

    add-int v6, v3, v5

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getServiceData()Ljava/util/Map;

    move-result-object v7

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    invoke-direct {p0, v7}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v7

    add-int/2addr v6, v7

    add-int/2addr v1, v6

    goto :goto_3

    :cond_8
    nop

    :goto_4
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_9

    nop

    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getManufacturerSpecificData()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-direct {p0, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->byteLength([B)I

    move-result v2

    const/4 v4, 0x4

    add-int/2addr v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_9
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeTxPowerLevel()Z

    move-result v0

    if-eqz v0, :cond_a

    add-int/lit8 v1, v1, 0x3

    :cond_a
    invoke-virtual {p1}, Landroid/bluetooth/le/AdvertiseData;->getIncludeDeviceName()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v3, v0

    add-int/2addr v1, v3

    :cond_b
    return v1
.end method


# virtual methods
.method public cleanup()V
    .locals 1

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mAdvertisingSets:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V

    return-void
.end method

.method public startAdvertising(Landroid/bluetooth/le/AdvertiseSettings;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 19

    move-object/from16 v10, p0

    move-object/from16 v11, p4

    iget-object v12, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v12

    :try_start_0
    iget-object v0, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    if-eqz v11, :cond_c

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->isConnectable()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v13, p2

    :try_start_1
    invoke-direct {v10, v13, v0}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x1f

    const/4 v3, 0x1

    if-gt v1, v2, :cond_b

    const/4 v1, 0x0

    move-object/from16 v14, p3

    :try_start_2
    invoke-direct {v10, v14, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v1

    if-le v1, v2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_1

    invoke-direct {v10, v11, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    monitor-exit v12

    return-void

    :cond_1
    new-instance v1, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-direct {v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;-><init>()V

    move-object v15, v1

    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setLegacyMode(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-virtual {v15, v0}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setConnectable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setScannable(Z)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    const/4 v4, 0x2

    if-nez v1, :cond_2

    const/16 v1, 0x640

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_0

    :cond_2
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-ne v1, v3, :cond_3

    const/16 v1, 0x190

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getMode()I

    move-result v1

    if-ne v1, v4, :cond_4

    const/16 v1, 0xa0

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setInterval(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    :cond_4
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-nez v1, :cond_5

    const/16 v1, -0x15

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v3, :cond_6

    const/16 v1, -0xf

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    :cond_6
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v4, :cond_7

    const/4 v1, -0x7

    invoke-virtual {v15, v1}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    goto :goto_1

    :cond_7
    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTxPowerLevel()I

    move-result v1

    if-ne v1, v2, :cond_8

    invoke-virtual {v15, v3}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->setTxPowerLevel(I)Landroid/bluetooth/le/AdvertisingSetParameters$Builder;

    :cond_8
    :goto_1
    const/4 v1, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertiseSettings;->getTimeout()I

    move-result v2

    move v9, v2

    if-lez v9, :cond_a

    const/16 v2, 0xa

    if-ge v9, v2, :cond_9

    goto :goto_2

    :cond_9
    div-int/lit8 v3, v9, 0xa

    :goto_2
    move v1, v3

    :cond_a
    move/from16 v16, v1

    move-object/from16 v8, p1

    invoke-virtual {v10, v11, v8}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;

    move-result-object v1

    move-object v7, v1

    iget-object v1, v10, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, v11, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v15}, Landroid/bluetooth/le/AdvertisingSetParameters$Builder;->build()Landroid/bluetooth/le/AdvertisingSetParameters;

    move-result-object v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v17, 0x0

    move-object v1, v10

    move-object v3, v13

    move-object v4, v14

    move-object/from16 v18, v7

    move/from16 v7, v16

    move/from16 v8, v17

    move/from16 v17, v9

    move-object/from16 v9, v18

    invoke-virtual/range {v1 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V

    monitor-exit v12

    return-void

    :cond_b
    move-object/from16 v14, p3

    :goto_3
    invoke-direct {v10, v11, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartFailure(Landroid/bluetooth/le/AdvertiseCallback;I)V

    monitor-exit v12

    return-void

    :catchall_0
    move-exception v0

    goto :goto_4

    :cond_c
    move-object/from16 v13, p2

    move-object/from16 v14, p3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    move-object/from16 v13, p2

    :goto_4
    move-object/from16 v14, p3

    :goto_5
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v0

    :catchall_2
    move-exception v0

    goto :goto_5
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 10

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move/from16 v13, p6

    move/from16 v14, p7

    move-object/from16 v15, p8

    move-object/from16 v10, p9

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {v0}, Landroid/bluetooth/le/BluetoothLeUtils;->checkAdapterStateOn(Landroid/bluetooth/BluetoothAdapter;)V

    if-eqz v15, :cond_12

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isConnectable()Z

    move-result v9

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->isLegacy()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    invoke-direct {v1, v11, v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v0

    const/16 v3, 0x1f

    if-gt v0, v3, :cond_1

    invoke-direct {v1, v12, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v0

    if-gt v0, v3, :cond_0

    move-object/from16 v8, p5

    goto/16 :goto_2

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy scan response data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Legacy advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLeCodedPhySupported()Z

    move-result v0

    iget-object v3, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothAdapter;->isLe2MPhySupported()Z

    move-result v3

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getPrimaryPhy()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Landroid/bluetooth/le/AdvertisingSetParameters;->getSecondaryPhy()I

    move-result v5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported primary PHY selected"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_4
    :goto_0
    if-ne v5, v6, :cond_5

    if-eqz v0, :cond_6

    :cond_5
    const/4 v6, 0x2

    if-ne v5, v6, :cond_7

    if-eqz v3, :cond_6

    goto :goto_1

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unsupported secondary PHY selected"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    :goto_1
    iget-object v6, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->getLeMaximumAdvertisingDataLength()I

    move-result v6

    invoke-direct {v1, v11, v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v7

    if-gt v7, v6, :cond_11

    invoke-direct {v1, v12, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v7

    if-gt v7, v6, :cond_10

    move-object/from16 v8, p5

    invoke-direct {v1, v8, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->totalBytes(Landroid/bluetooth/le/AdvertiseData;Z)I

    move-result v2

    if-gt v2, v6, :cond_f

    iget-object v2, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v2

    if-eqz p4, :cond_9

    if-eqz v2, :cond_8

    goto :goto_2

    :cond_8
    new-instance v7, Ljava/lang/IllegalArgumentException;

    move/from16 v16, v0

    const-string v0, "Controller does not support LE Periodic Advertising"

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7

    :cond_9
    :goto_2
    if-ltz v14, :cond_e

    const/16 v0, 0xff

    if-gt v14, v0, :cond_e

    if-eqz v14, :cond_b

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isLePeriodicAdvertisingSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Can\'t use maxExtendedAdvertisingEvents with controller that don\'t support LE Extended Advertising"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    :goto_3
    if-ltz v13, :cond_d

    const v0, 0xffff

    if-gt v13, v0, :cond_d

    const/4 v7, 0x4

    :try_start_0
    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    nop

    nop

    invoke-virtual {v1, v15, v10}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;

    move-result-object v6

    iget-object v0, v1, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0, v15, v6}, Ljava/util/Map;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_c

    move-object/from16 v3, p1

    move-object v4, v11

    move-object v5, v12

    move-object/from16 v16, v6

    move-object/from16 v6, p4

    move v11, v7

    move-object v7, v8

    move v8, v13

    move/from16 v17, v9

    move v9, v14

    move-object v11, v10

    move-object/from16 v10, v16

    :try_start_1
    invoke-interface/range {v2 .. v10}, Landroid/bluetooth/IBluetoothGatt;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    nop

    return-void

    :catch_0
    move-exception v0

    move-object v3, v0

    const-string v3, "BluetoothLeAdvertiser"

    const-string v4, "Failed to start advertising set - "

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v3, 0x4

    invoke-direct {v1, v11, v15, v3}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void

    :cond_c
    move-object/from16 v16, v6

    move/from16 v17, v9

    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "callback instance already associated with advertising"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v0

    move/from16 v17, v9

    move-object v11, v10

    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to get Bluetooth gatt - "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    invoke-direct {v1, v11, v15, v2}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->postStartSetFailure(Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;I)V

    return-void

    :cond_d
    move/from16 v17, v9

    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "duration out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    move/from16 v17, v9

    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxExtendedAdvertisingEvents out of range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    move/from16 v16, v0

    move/from16 v17, v9

    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Periodic advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    move/from16 v16, v0

    move/from16 v17, v9

    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Scan response data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move/from16 v16, v0

    move/from16 v17, v9

    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Advertising data too big"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    move-object v11, v10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 10

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V
    .locals 10

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    invoke-virtual/range {v0 .. v9}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->startAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetParameters;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/AdvertiseData;Landroid/bluetooth/le/PeriodicAdvertisingParameters;Landroid/bluetooth/le/AdvertiseData;IILandroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public stopAdvertising(Landroid/bluetooth/le/AdvertiseCallback;)V
    .locals 3

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    monitor-enter v0

    if-eqz p1, :cond_1

    :try_start_0
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/le/AdvertisingSetCallback;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0, v1}, Landroid/bluetooth/le/BluetoothLeAdvertiser;->stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V

    iget-object v2, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mLegacyAdvertisers:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "callback cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public stopAdvertisingSet(Landroid/bluetooth/le/AdvertisingSetCallback;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v0

    const-string v1, "BluetoothLeAdvertiser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stopAdvertisingSet(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroid/bluetooth/BluetoothAdapter;->nameForState(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_3

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    :cond_0
    nop

    if-eqz p1, :cond_2

    iget-object v0, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mCallbackWrappers:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/le/IAdvertisingSetCallback;

    if-nez v0, :cond_1

    return-void

    :cond_1
    :try_start_1
    iget-object v1, p0, Landroid/bluetooth/le/BluetoothLeAdvertiser;->mBluetoothManager:Landroid/bluetooth/IBluetoothManager;

    invoke-interface {v1}, Landroid/bluetooth/IBluetoothManager;->getBluetoothGatt()Landroid/bluetooth/IBluetoothGatt;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/bluetooth/IBluetoothGatt;->stopAdvertisingSet(Landroid/bluetooth/le/IAdvertisingSetCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BluetoothLeAdvertiser"

    const-string v3, "Failed to stop advertising - "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "BT Adapter is not turned ON"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    const-string v1, "BluetoothLeAdvertiser"

    const-string v2, "Failed to stop Advertisement:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method wrap(Landroid/bluetooth/le/AdvertisingSetCallback;Landroid/os/Handler;)Landroid/bluetooth/le/IAdvertisingSetCallback;
    .locals 1

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;

    invoke-direct {v0, p0, p2, p1}, Landroid/bluetooth/le/BluetoothLeAdvertiser$2;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/os/Handler;Landroid/bluetooth/le/AdvertisingSetCallback;)V

    return-object v0
.end method

.method wrapOldCallback(Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)Landroid/bluetooth/le/AdvertisingSetCallback;
    .locals 1

    new-instance v0, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;

    invoke-direct {v0, p0, p1, p2}, Landroid/bluetooth/le/BluetoothLeAdvertiser$1;-><init>(Landroid/bluetooth/le/BluetoothLeAdvertiser;Landroid/bluetooth/le/AdvertiseCallback;Landroid/bluetooth/le/AdvertiseSettings;)V

    return-object v0
.end method
