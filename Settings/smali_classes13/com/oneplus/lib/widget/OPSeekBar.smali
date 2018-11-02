.class public Lcom/oneplus/lib/widget/OPSeekBar;
.super Lcom/oneplus/lib/widget/OPAbsSeekBar;
.source "OPSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPSeekBarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Widget_Material_SeekBar:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Lcom/oneplus/lib/widget/OPAbsSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    const-class v0, Lcom/oneplus/lib/widget/OPSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method onProgressRefresh(FZI)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onProgressRefresh(FZI)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0, p3, p2}, Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/oneplus/lib/widget/OPSeekBar;IZ)V

    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStartTrackingTouch()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V

    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/lib/widget/OPAbsSeekBar;->onStopTrackingTouch()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V

    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPSeekBar;->mOnSeekBarChangeListener:Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;

    return-void
.end method
