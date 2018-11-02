.class public Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "UnrestrictAppAction.java"


# instance fields
.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 8

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mUnRestrictAppTip:Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;->getUnrestrictAppInfo()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v2, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->uid:I

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->setForceAppStandby(ILjava/lang/String;I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/UnrestrictAppAction;->mContext:Landroid/content/Context;

    iget-object v3, v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/util/Pair;

    const/16 v6, 0x341

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    aput-object v6, v5, v4

    const/16 v4, 0x553

    invoke-virtual {v1, v2, v4, v3, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    return-void
.end method
