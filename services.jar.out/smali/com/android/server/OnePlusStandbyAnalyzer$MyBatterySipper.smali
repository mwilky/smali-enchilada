.class public Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;
.super Lcom/android/internal/os/BatterySipper;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyBatterySipper"
.end annotation


# instance fields
.field public wakeups:I


# direct methods
.method public constructor <init>(Lcom/android/internal/os/BatterySipper;)V
    .locals 4

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    iget-wide v1, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    const/4 v3, 0x0

    invoke-direct {p0, v0, v3, v1, v2}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->wakeups:I

    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/OnePlusStandbyAnalyzer$MyUid;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    :cond_0
    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockTimeMs:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->wakeLockTimeMs:J

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->usagePowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->usagePowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->wifiPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->gpsPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->cpuPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->sensorPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->mobileRadioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->wakeLockPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->cameraPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->flashlightPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->bluetoothPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->totalPowerMah:D

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$MyBatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    :cond_1
    return-void
.end method
