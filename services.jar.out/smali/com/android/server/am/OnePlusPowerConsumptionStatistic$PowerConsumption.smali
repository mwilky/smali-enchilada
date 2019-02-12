.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerConsumption"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;",
        ">;"
    }
.end annotation


# instance fields
.field public audioPowerMah:D

.field public bluetoothPowerMah:D

.field public cameraPowerMah:D

.field public cpuPowerMah:D

.field df:Ljava/text/DecimalFormat;

.field public drainType:Ljava/lang/String;

.field public flashlightPowerMah:D

.field public gpsPowerMah:D

.field public mobileRadioPowerMah:D

.field public pkgName:Ljava/lang/String;

.field public sensorPowerMah:D

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

.field public totalPowerMah:D

.field public totalTime:J

.field public uid:Ljava/lang/Integer;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public videoPowerMah:D

.field public wakeLockPowerMah:D

.field public wifiPowerMah:D


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->df:Ljava/text/DecimalFormat;

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/Integer;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const-string/jumbo v0, "null"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->df:Ljava/text/DecimalFormat;

    iput-object p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->initDrainType()V

    return-void
.end method

.method static synthetic access$7900(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->updatePowerItems(Lcom/android/internal/os/BatterySipper;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->initPkgNameByUid()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8100(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->updatePowerItems(Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V

    return-void
.end method

.method static synthetic access$8300(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$9200(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;IZ)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->toMDM(IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private equals(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    iget v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iget-wide v3, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    cmpl-double v1, v1, v3

    if-nez v1, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v0
.end method

.method private handlePastData(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private initDrainType()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x54

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8700(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method private initPkgNameByUid()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, -0x54

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v2, -0x64

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$2000(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8800(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    :cond_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v4, v3, v2

    iput-object v4, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    const-string v4, "[a-zA-z]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_4

    const-string/jumbo v0, "kernel"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    return v1

    :cond_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    :cond_5
    return v2
.end method

.method private toMDM(IZ)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, -0x1

    if-eqz p2, :cond_3

    if-ne p1, v1, :cond_0

    const-string/jumbo v1, "{\"uid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"uid\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    const-string v1, "\",\"pn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string/jumbo v1, "unknow"

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pv\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    if-nez v1, :cond_2

    const-string/jumbo v1, "unknow"

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pc\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"time\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\",\"total\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"cpu\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"audio\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"video\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"wake\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"radio\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"wifi\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"bt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"gps\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sensor\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"camera\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"flash\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_3
    if-ne p1, v1, :cond_5

    const-string/jumbo v1, "{\"pn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_4

    const-string/jumbo v1, "unknow"

    goto :goto_3

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_5
    const-string/jumbo v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_6

    const-string/jumbo v1, "unknow"

    goto :goto_4

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    :goto_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_5
    const-string v1, "\",\"total\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private updatePowerItems(Lcom/android/internal/os/BatterySipper;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    :cond_0
    return-void
.end method

.method private updatePowerItems(Lcom/android/internal/os/BatterySipper;Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)V
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cpuPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->audioPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->audioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wakeLockPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->mobileRadioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->wifiPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->bluetoothPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->gpsPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->sensorPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->cameraPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->flashlightPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->videoPowerMah:D

    iget-wide v2, p2, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->videoPowerMah:D

    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    cmpg-double v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->compareTo(Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerConsumption{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",drainType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mVersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",totalPowerMah:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$8900(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",totalTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->totalTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mdm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "null"

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->drainType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$PowerConsumption;->toMDM(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
