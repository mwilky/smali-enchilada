.class public Lcom/android/systemui/BatteryMeterViewLeft;
.super Lcom/android/systemui/BatteryMeterView;
.source "BatteryMeterViewLeft.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/BatteryMeterViewLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterViewLeft;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewLeft;->setTag()V

    return-void
.end method


# virtual methods
.method public batteryPosition()V
    .registers 3

    .line 19
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewLeft;->readRenovateMods()V

    .line 20
    iget v0, p0, Lcom/android/systemui/BatteryMeterViewLeft;->mClockPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterViewLeft;->mSwapBatteryPosition:Z

    if-eqz v0, :cond_11

    .line 21
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterViewLeft;->setVisibility(I)V

    goto :goto_16

    .line 23
    :cond_11
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterViewLeft;->setVisibility(I)V

    .line 25
    :goto_16
    return-void
.end method

.method public setTag()V
    .registers 4

    .line 28
    iget v0, p0, Lcom/android/systemui/BatteryMeterView;->mClockPosition:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_19

    iget-boolean v0, p0, Lcom/android/systemui/BatteryMeterView;->mSwapBatteryPosition:Z

    if-eqz v0, :cond_19

    .line 29
    const-string v0, "battery_left_visible_tag"

    const-string v2, "id"

    invoke-static {v0, v2}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->setTag(ILjava/lang/Object;)V

    goto :goto_29

    .line 31
    :cond_19
    const-string v0, "battery_left_visible_tag"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryMeterView;->setTag(ILjava/lang/Object;)V

    .line 33
    :goto_29
    return-void
.end method
