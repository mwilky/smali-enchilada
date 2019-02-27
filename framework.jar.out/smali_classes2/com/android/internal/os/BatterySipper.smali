.class public Lcom/android/internal/os/BatterySipper;
.super Ljava/lang/Object;
.source "BatterySipper.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/os/BatterySipper$DrainType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/internal/os/BatterySipper;",
        ">;"
    }
.end annotation


# static fields
.field private static DEBUG_ONEPLUS:Z = false

.field private static final TAG:Ljava/lang/String; = "BatterySipper"


# instance fields
.field public audioPowerMah:D

.field public audioTimeMs:J

.field public bluetoothPowerMah:D

.field public bluetoothRunningTimeMs:J

.field public btRxBytes:J

.field public btTxBytes:J

.field public cameraPowerMah:D

.field public cameraTimeMs:J

.field public cpuFgTimeMs:J

.field public cpuPowerMah:D

.field public cpuTimeMs:J

.field public drainType:Lcom/android/internal/os/BatterySipper$DrainType;

.field public flashlightPowerMah:D

.field public flashlightTimeMs:J

.field public gpsPowerMah:D

.field public gpsTimeMs:J

.field public mPackages:[Ljava/lang/String;

.field public mobileActive:J

.field public mobileActiveCount:I

.field public mobileRadioPowerMah:D

.field public mobileRxBytes:J

.field public mobileRxPackets:J

.field public mobileTxBytes:J

.field public mobileTxPackets:J

.field public mobilemspp:D

.field public noCoveragePercent:D

.field public packageWithHighestDrain:Ljava/lang/String;

.field public percent:D

.field public proportionalSmearMah:D

.field public screenPowerMah:D

.field public sensorPowerMah:D

.field public shouldHide:Z

.field public totalPowerMah:D

.field public totalSmearedPowerMah:D

.field public uidObj:Landroid/os/BatteryStats$Uid;

.field public usagePowerMah:D

.field public usageTimeMs:J

.field public userId:I

.field public videoPowerMah:D

.field public videoTimeMs:J

.field public wakeLockPowerMah:D

.field public wakeLockTimeMs:J

.field public wifiPowerMah:D

.field public wifiRunningTimeMs:J

.field public wifiRxBytes:J

.field public wifiRxPackets:J

.field public wifiTxBytes:J

.field public wifiTxPackets:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/internal/os/BatterySipper;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V
    .locals 0
    .param p1, "drainType"    # Lcom/android/internal/os/BatterySipper$DrainType;
    .param p2, "uid"    # Landroid/os/BatteryStats$Uid;
    .param p3, "value"    # D

    .line 144
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 145
    iput-wide p3, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 146
    iput-object p1, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    .line 147
    iput-object p2, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 148
    return-void
.end method


# virtual methods
.method public add(Lcom/android/internal/os/BatterySipper;)V
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .line 189
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 190
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 191
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    .line 192
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->audioTimeMs:J

    .line 193
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuTimeMs:J

    .line 194
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsTimeMs:J

    .line 195
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRunningTimeMs:J

    .line 196
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuFgTimeMs:J

    .line 197
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->videoTimeMs:J

    .line 198
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    .line 199
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraTimeMs:J

    .line 200
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightTimeMs:J

    .line 201
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothRunningTimeMs:J

    .line 202
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    .line 203
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    .line 204
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    .line 205
    iget v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    iget v1, p1, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/os/BatterySipper;->mobileActiveCount:I

    .line 206
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxPackets:J

    .line 207
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxPackets:J

    .line 208
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxBytes:J

    .line 209
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileTxBytes:J

    .line 210
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiRxBytes:J

    .line 211
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiTxBytes:J

    .line 212
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btRxBytes:J

    .line 213
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->btTxBytes:J

    .line 214
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    .line 215
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    .line 216
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    .line 217
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    .line 218
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    .line 219
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    .line 220
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    .line 221
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    .line 222
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    .line 223
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    .line 224
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    .line 225
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    .line 226
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    .line 227
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    iget-wide v2, p1, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 228
    return-void
.end method

.method public compareTo(Lcom/android/internal/os/BatterySipper;)I
    .locals 4
    .param p1, "other"    # Lcom/android/internal/os/BatterySipper;

    .line 158
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    .line 159
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_0

    .line 161
    const/4 v0, 0x1

    return v0

    .line 162
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    .line 163
    const/4 v0, -0x1

    return v0

    .line 167
    :cond_1
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 28
    check-cast p1, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/BatterySipper;->compareTo(Lcom/android/internal/os/BatterySipper;)I

    move-result p1

    return p1
.end method

.method public computeMobilemspp()V
    .locals 6

    .line 151
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRxPackets:J

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileTxPackets:J

    add-long/2addr v0, v2

    .line 152
    .local v0, "packets":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileActive:J

    long-to-double v2, v2

    long-to-double v4, v0

    div-double/2addr v2, v4

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    iput-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobilemspp:D

    .line 153
    return-void
.end method

.method public getPackages()[Ljava/lang/String;
    .locals 1

    .line 174
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    .line 180
    const/4 v0, 0x0

    return v0

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v0}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v0

    return v0
.end method

.method public sumPower()D
    .locals 6

    .line 237
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    .line 243
    sget-boolean v0, Lcom/android/internal/os/BatterySipper;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_b

    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    .line 244
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    .line 245
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative usagePowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    .line 247
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative wifiPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_2

    .line 249
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative gpsPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_3

    .line 251
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative cpuPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    :cond_3
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_4

    .line 253
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative sensorPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    :cond_4
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_5

    .line 255
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative mobileRadioPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_5
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_6

    .line 257
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative wakeLockPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    :cond_6
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_7

    .line 259
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative cameraPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    :cond_7
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_8

    .line 261
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative flashlightPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_8
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_9

    .line 263
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative bluetoothPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_9
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_a

    .line 265
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[BGC] negative audioPowerMah :"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_a
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_b

    .line 267
    const-string v0, "BatterySipper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[BGC] negative videoPowerMah :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    :cond_b
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->screenPowerMah:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/internal/os/BatterySipper;->proportionalSmearMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalSmearedPowerMah:D

    .line 273
    iget-wide v0, p0, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    return-wide v0
.end method
