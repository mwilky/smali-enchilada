.class public Lcom/android/settings/fuelgauge/BatteryActiveView;
.super Landroid/view/View;
.source "BatteryActiveView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;
    }
.end annotation


# instance fields
.field private final mPaint:Landroid/graphics/Paint;

.field private mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private drawColor(Landroid/graphics/Canvas;IIIF)V
    .locals 8

    if-nez p4, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float v0, p2

    div-float/2addr v0, p5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v3, v0, v1

    const/4 v4, 0x0

    int-to-float v0, p3

    div-float/2addr v0, p5

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v5, v0, v1

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getColorArray()Landroid/util/SparseIntArray;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-interface {v1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->getPeriod()J

    move-result-wide v1

    long-to-float v1, v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v5

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v0, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v7

    move-object v3, p0

    move-object v4, p1

    move v8, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/BatteryActiveView;->drawColor(Landroid/graphics/Canvas;IIIF)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryActiveView;->mProvider:Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryActiveView;->postInvalidate()V

    :cond_0
    return-void
.end method
