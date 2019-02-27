.class public interface abstract Lcom/android/internal/app/ColorDisplayController$Callback;
.super Ljava/lang/Object;
.source "ColorDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ColorDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Callback"
.end annotation


# virtual methods
.method public onAccessibilityTransformChanged(Z)V
    .locals 0
    .param p1, "state"    # Z

    .line 811
    return-void
.end method

.method public onActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 762
    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 0
    .param p1, "autoMode"    # I

    .line 778
    return-void
.end method

.method public onColorTemperatureChanged(I)V
    .locals 0
    .param p1, "colorTemperature"    # I

    .line 797
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "endTime"    # Ljava/time/LocalTime;

    .line 790
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 0
    .param p1, "startTime"    # Ljava/time/LocalTime;

    .line 784
    return-void
.end method

.method public onDisplayColorModeChanged(I)V
    .locals 0
    .param p1, "displayColorMode"    # I

    .line 804
    return-void
.end method

.method public onDisplayInversionChange(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 770
    return-void
.end method

.method public onModeSettingChange()V
    .locals 0

    .line 769
    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 764
    return-void
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 0
    .param p1, "on"    # Z

    .line 768
    return-void
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 767
    return-void
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 0
    .param p1, "activated"    # Z

    .line 766
    return-void
.end method
