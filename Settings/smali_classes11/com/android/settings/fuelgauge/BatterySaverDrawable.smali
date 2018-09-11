.class public Lcom/android/settings/fuelgauge/BatterySaverDrawable;
.super Lcom/android/settingslib/graph/BatteryMeterDrawableBase;
.source "BatterySaverDrawable.java"


# static fields
.field private static final MAX_BATTERY:I = 0x64


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "frameColor"    # I

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/graph/BatteryMeterDrawableBase;-><init>(Landroid/content/Context;I)V

    .line 36
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverDrawable;->setBatteryLevel(I)V

    .line 37
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverDrawable;->setPowerSave(Z)V

    .line 38
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverDrawable;->setCharging(Z)V

    .line 39
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/BatterySaverDrawable;->setPowerSaveAsColorError(Z)V

    .line 40
    const v0, 0x1010435

    invoke-static {p1, v0}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result v0

    .line 41
    .local v0, "tintColor":I
    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v0, v2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatterySaverDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 42
    return-void
.end method
