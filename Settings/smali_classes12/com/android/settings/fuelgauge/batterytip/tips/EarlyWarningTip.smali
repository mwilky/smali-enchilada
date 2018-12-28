.class public Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "EarlyWarningTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mPowerSaveModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f08018c

    goto :goto_0

    :cond_0
    const v0, 0x7f08018a

    :goto_0
    return v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    nop

    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f120255

    goto :goto_0

    :cond_0
    const v0, 0x7f120257

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    nop

    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const v0, 0x7f120256

    goto :goto_0

    :cond_0
    const v0, 0x7f120258

    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isPowerSaveModeOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    return v0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/16 v1, 0x547

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 3

    move-object v0, p1

    check-cast v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;

    iget v1, v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    if-nez v1, :cond_0

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    if-nez v1, :cond_2

    iget v1, v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    iput v2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->getState()I

    move-result v1

    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    :goto_0
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
