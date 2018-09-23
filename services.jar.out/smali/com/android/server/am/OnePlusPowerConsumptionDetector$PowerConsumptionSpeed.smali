.class Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionDetector.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PowerConsumptionSpeed"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;",
        ">;"
    }
.end annotation


# instance fields
.field public bluetoothPowerMah:D

.field public cameraPowerMah:D

.field public cpuPowerMah:D

.field df:Ljava/text/DecimalFormat;

.field public diffMah:D

.field public diffTime:J

.field public drainType:Ljava/lang/String;

.field public flashlightPowerMah:D

.field public gpsPowerMah:D

.field public mobileRadioPowerMah:D

.field public percent:D

.field public pkgName:Ljava/lang/String;

.field public pkgNames:[Ljava/lang/String;

.field public sensorPowerMah:D

.field public simplifyToString:Z

.field public uid:Ljava/lang/Integer;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public wakeLockPowerMah:D

.field public wifiPowerMah:D


# direct methods
.method public constructor <init>(Ljava/lang/Integer;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->simplifyToString:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionCode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    new-instance v0, Ljava/text/DecimalFormat;

    const-string v1, "0.00%"

    invoke-direct {v0, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->df:Ljava/text/DecimalFormat;

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->initDrainType()V

    return-void
.end method

.method private formatStringArray([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    array-length v1, p1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private initDrainType()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x56

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$900(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "app"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "app_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    :goto_0
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;)I
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iget-wide v2, p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

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

    check-cast p1, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->compareTo(Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;)I

    move-result p1

    return p1
.end method

.method public initPkgNameByUid()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x56

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, -0x64

    if-le v0, v1, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$400()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->access$1000()Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionName:Ljava/lang/String;

    iget v1, v0, Landroid/content/pm/PackageParser$Package;->mVersionCode:I

    iput v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionCode:I

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "kernel"

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerConsumptionSpeed uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " |pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->myLog(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public toMDM()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{\"pn\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pv\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionName:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionName:Ljava/lang/String;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"pc\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\",\"rate\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->df:Ljava/text/DecimalFormat;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    invoke-virtual {v1, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"cpu\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"wake\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"radio\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"wifi\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"bt\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->bluetoothPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"gps\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"sensor\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"camera\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\",\"flash\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\"}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerConsumptionSpeed{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",drainType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->drainType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",pkgName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mVersionName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",mVersionCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->versionCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->uid:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x1

    const/16 v3, 0x3e8

    if-eq v1, v3, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    array-length v1, v1

    if-le v1, v2, :cond_0

    const-string v1, ",pkgNames:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->pkgNames:[Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->formatStringArray([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v1, ",diffMah:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    invoke-static {v3, v4}, Lcom/android/server/am/OnePlusPowerConsumptionDetector;->formatDouble(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",percent:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v3, "%.2f"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->percent:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {v1, v3, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",diffTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",mdm:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->toMDM()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updatePowerItems(Lcom/android/internal/os/BatterySipper;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->diffMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cpuPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cpuPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wakeLockPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wakeLockPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->mobileRadioPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->mobileRadioPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->wifiPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->wifiPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->bluetoothPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->bluetoothPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->gpsPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->gpsPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->sensorPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->sensorPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->cameraPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->cameraPowerMah:D

    iget-wide v0, p1, Lcom/android/internal/os/BatterySipper;->flashlightPowerMah:D

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionDetector$PowerConsumptionSpeed;->flashlightPowerMah:D

    :cond_0
    return-void
.end method
