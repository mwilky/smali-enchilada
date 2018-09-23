.class public Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "HighUsageTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field final mHighUsageAppList:Ljava/util/List;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastFullChargeTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(JLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x1

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    iput-wide p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mLastFullChargeTimeMs:J

    iput-object p3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mLastFullChargeTimeMs:J

    sget-object v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getHighUsageAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/AppInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    return-object v0
.end method

.method public getIconId()I
    .locals 1

    const v0, 0x7f0801ed

    return v0
.end method

.method public getLastFullChargeTimeMs()J
    .locals 2

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mLastFullChargeTimeMs:J

    return-wide v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f120259

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f12025a

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 6

    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mState:I

    const/16 v1, 0x544

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    const/16 v3, 0x54a

    iget-object v4, v2, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/util/Pair;

    invoke-virtual {p2, p1, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-super {p0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, " {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mState:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mLastFullChargeTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/HighUsageTip;->mHighUsageAppList:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
