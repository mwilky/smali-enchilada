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
    .locals 2
    
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->readRenovateMods()V
	
	const/4 v0, 0x1
	
	iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mClockPosition:I
	
	if-ne v0, v1, :cond_hide
	
	const v0, 0x0
	
	goto :goto_mw
	
	:cond_hide
	const v0, 0x8
	
	:goto_mw	
	invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryMeterView;->setVisibility(I)V
	
	invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterViewLeft;->setTag()V
	
    return-void
.end method

.method public setTag()V
	.locals 4
	
	const-string v0, "battery_left_visible_tag"

    const-string v1, "id"

    invoke-static {v0, v1}, Lcom/android/wubydax/GearUtils;->getIdentifier(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    
    const/4 v0, 0x1
	
	iget v1, p0, Lcom/android/systemui/BatteryMeterView;->mClockPosition:I

	const/4 v3, 0x1
	
	if-ne v0, v1, :cond_mw

  	goto :goto_mw
  
    :cond_mw
    const/4 v3, 0x0

    :goto_mw
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p0, v2, v3},  Lcom/android/systemui/BatteryMeterView;->setTag(ILjava/lang/Object;)V
    
    return-void
.end method
