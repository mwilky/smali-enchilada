.class public Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "BatteryStatsHelperLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Lcom/android/internal/os/BatteryStatsHelper;",
        ">;"
    }
.end annotation


# instance fields
.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mUserManager:Landroid/os/UserManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mUserManager:Landroid/os/UserManager;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public loadInBackground()Lcom/android/internal/os/BatteryStatsHelper;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->mUserManager:Landroid/os/UserManager;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/settings/fuelgauge/BatteryUtils;->initBatteryStatsHelper(Lcom/android/internal/os/BatteryStatsHelper;Landroid/os/Bundle;Landroid/os/UserManager;)V

    return-object v1
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->loadInBackground()Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryStatsHelperLoader;->onDiscardResult(Lcom/android/internal/os/BatteryStatsHelper;)V

    return-void
.end method
