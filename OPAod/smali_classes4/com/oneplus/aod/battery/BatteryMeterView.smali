.class public Lcom/oneplus/aod/battery/BatteryMeterView;
.super Landroid/widget/ImageView;
.source "BatteryMeterView.java"

# interfaces
.implements Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

.field private mBatteryStyle:I

.field private mContext:Landroid/content/Context;

.field private final mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

.field private mFastCharge:Z

.field private mPercentage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/battery/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "BatteryMeterView"

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mFastCharge:Z

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryStyle:I

    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/oneplus/aod/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    const v2, 0x7f05005d

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    new-instance v2, Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p1, v3, v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->setIconPlace(Z)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/battery/BatteryMeterView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private updateBatteryMeterVisibility()V
    .locals 3

    const-string v0, "BatteryMeterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBatteryMeterVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fastCharge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mFastCharge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getBatteryController()Lcom/oneplus/aod/battery/BatteryController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->setBatteryController(Lcom/oneplus/aod/battery/BatteryController;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mPercentage:Landroid/widget/TextView;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodUpdateMonitor;->getAodView()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0900e8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mPercentage:Landroid/widget/TextView;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->addStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->startListening()V

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterView;->updateBatteryMeterVisibility()V

    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060070

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/battery/BatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->relayout()V

    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mPercentage:Landroid/widget/TextView;

    const v2, 0x7f110393

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 5

    nop

    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p3, :cond_0

    const v1, 0x7f10002b

    goto :goto_0

    :cond_0
    const v1, 0x7f10002a

    :goto_0
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/battery/BatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mPercentage:Landroid/widget/TextView;

    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryStyle:I

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterView;->updateBatteryMeterVisibility()V

    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryMeterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryController:Lcom/oneplus/aod/battery/BatteryController;

    invoke-interface {v0, p0}, Lcom/oneplus/aod/battery/BatteryController;->removeStateChangedCallback(Lcom/oneplus/aod/battery/BatteryController$BatteryStateChangeCallback;)V

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->stopListening()V

    return-void
.end method

.method public onFastChargeChanged(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mFastCharge:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mFastCharge:Z

    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryMeterView;->updateBatteryMeterVisibility()V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mBatteryStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v1, 0x3

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/oneplus/aod/battery/BatteryMeterView;->onSizeChanged(IIII)V

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/battery/BatteryMeterView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method

.method public setDarkIntensity(F)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryMeterView;->mDrawable:Lcom/oneplus/aod/battery/BatteryMeterDrawable;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/battery/BatteryMeterDrawable;->setDarkIntensity(F)V

    return-void
.end method
