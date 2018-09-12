.class public interface abstract Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;
.super Ljava/lang/Object;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/battery/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BatteryStateChangeCallback"
.end annotation


# virtual methods
.method public abstract onBatteryLevelChanged(IZZ)V
.end method

.method public abstract onBatteryPercentShowChange(Z)V
.end method

.method public abstract onBatteryStyleChanged(I)V
.end method

.method public abstract onFastChargeChanged(Z)V
.end method

.method public abstract onPowerSaveChanged(Z)V
.end method
