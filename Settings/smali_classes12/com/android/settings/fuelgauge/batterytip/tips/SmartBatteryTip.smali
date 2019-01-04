.class public Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "SmartBatteryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    const v0, 0x7f0801ed

    return v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f120261

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    const v0, 0x7f120262

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2

    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;->mState:I

    const/16 v1, 0x546

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 1

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SmartBatteryTip;->mState:I

    return-void
.end method
