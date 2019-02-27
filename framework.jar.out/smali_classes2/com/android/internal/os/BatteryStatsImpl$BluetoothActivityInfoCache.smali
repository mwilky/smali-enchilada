.class final Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BatteryStatsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothActivityInfoCache"
.end annotation


# instance fields
.field energy:J

.field idleTimeMs:J

.field rxTimeMs:J

.field final synthetic this$0:Lcom/android/internal/os/BatteryStatsImpl;

.field txTimeMs:J

.field uidRxBytes:Landroid/util/SparseLongArray;

.field uidTxBytes:Landroid/util/SparseLongArray;


# direct methods
.method private constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;)V
    .locals 0

    .line 11584
    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->this$0:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11590
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    .line 11591
    new-instance p1, Landroid/util/SparseLongArray;

    invoke-direct {p1}, Landroid/util/SparseLongArray;-><init>()V

    iput-object p1, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/BatteryStatsImpl;Lcom/android/internal/os/BatteryStatsImpl$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/internal/os/BatteryStatsImpl;
    .param p2, "x1"    # Lcom/android/internal/os/BatteryStatsImpl$1;

    .line 11584
    invoke-direct {p0, p1}, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;-><init>(Lcom/android/internal/os/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method set(Landroid/bluetooth/BluetoothActivityEnergyInfo;)V
    .locals 8
    .param p1, "info"    # Landroid/bluetooth/BluetoothActivityEnergyInfo;

    .line 11594
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerIdleTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->idleTimeMs:J

    .line 11595
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerRxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->rxTimeMs:J

    .line 11596
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerTxTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->txTimeMs:J

    .line 11597
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getControllerEnergyUsed()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->energy:J

    .line 11598
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11599
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothActivityEnergyInfo;->getUidTraffic()[Landroid/bluetooth/UidTraffic;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 11600
    .local v3, "traffic":Landroid/bluetooth/UidTraffic;
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidRxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v5

    invoke-virtual {v3}, Landroid/bluetooth/UidTraffic;->getRxBytes()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 11601
    iget-object v4, p0, Lcom/android/internal/os/BatteryStatsImpl$BluetoothActivityInfoCache;->uidTxBytes:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/bluetooth/UidTraffic;->getUid()I

    move-result v5

    invoke-virtual {v3}, Landroid/bluetooth/UidTraffic;->getTxBytes()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 11599
    .end local v3    # "traffic":Landroid/bluetooth/UidTraffic;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 11604
    :cond_0
    return-void
.end method
