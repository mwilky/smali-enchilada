.class public abstract Lcom/oneplus/lib/widget/button/OPCompoundButton;
.super Landroid/widget/Button;
.source "OPCompoundButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;,
        Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final CHECKED_STATE_SET:[I

.field public static TAG:Ljava/lang/String;


# instance fields
.field private mBroadcasting:Z

.field private mButtonDrawable:Landroid/graphics/drawable/Drawable;

.field private mButtonResource:I

.field private mButtonTintList:Landroid/content/res/ColorStateList;

.field private mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

.field private mChecked:Z

.field private mHasButtonTint:Z

.field private mHasButtonTintMode:Z

.field private mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

.field private mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 72
    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    .line 75
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    sput-object v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->CHECKED_STATE_SET:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 110
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 111
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 65
    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    .line 67
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    .line 126
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 129
    .local v1, "a":Landroid/content/res/TypedArray;
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_button:I

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 130
    .local v2, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v2, :cond_0

    .line 131
    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 134
    :cond_0
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTintMode:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz v3, :cond_1

    .line 135
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTintMode:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iget-object v6, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v3, v6}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 137
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    .line 140
    :cond_1
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTint:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 141
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_buttonTint:I

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 142
    iput-boolean v4, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    .line 145
    :cond_2
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_checked:I

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 147
    .local v0, "checked":Z
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setChecked(Z)V

    .line 148
    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPCompoundbutton_android_radius:I

    invoke-virtual {v1, v3, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 150
    .local v3, "nRadius":I
    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setRadius(I)V

    .line 152
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 154
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 156
    return-void
.end method

.method private applyButtonTint()V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_3

    .line 406
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 408
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    if-eqz v0, :cond_1

    .line 409
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 412
    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    if-eqz v0, :cond_2

    .line 413
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 418
    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 419
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 422
    :cond_3
    return-void
.end method

.method private static parseTintMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;
    .locals 1
    .param p0, "value"    # I
    .param p1, "defaultMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 173
    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x9

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 180
    return-object p1

    .line 179
    :pswitch_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->ADD:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 178
    :pswitch_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SCREEN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 177
    :pswitch_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 176
    :cond_0
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 175
    :cond_1
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    .line 174
    :cond_2
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    return-object v0

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setRadius(I)V
    .locals 3
    .param p1, "nRadius"    # I

    .line 159
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 160
    return-void

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 162
    .local v0, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v1, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 165
    move-object v1, v0

    check-cast v1, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto :goto_0

    .line 168
    :cond_1
    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v2, "setRaidus fail , background not a rippleDrawable"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :goto_0
    return-void
.end method


# virtual methods
.method public drawableHotspotChanged(FF)V
    .locals 1
    .param p1, "x"    # F
    .param p2, "y"    # F

    .line 544
    invoke-super {p0, p1, p2}, Landroid/widget/Button;->drawableHotspotChanged(FF)V

    .line 546
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 549
    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 2

    .line 530
    invoke-super {p0}, Landroid/widget/Button;->drawableStateChanged()V

    .line 532
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 533
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 536
    .local v0, "myDrawableState":[I
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->invalidate()V

    .line 540
    .end local v0    # "myDrawableState":[I
    :cond_0
    return-void
.end method

.method public getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getButtonTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    .line 401
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getCompoundPaddingLeft()I
    .locals 3

    .line 441
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingLeft()I

    move-result v0

    .line 442
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v1

    if-nez v1, :cond_0

    .line 443
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 444
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 445
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 448
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 3

    .line 453
    invoke-super {p0}, Landroid/widget/Button;->getCompoundPaddingRight()I

    move-result v0

    .line 454
    .local v0, "padding":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 455
    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 456
    .local v1, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 457
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 460
    .end local v1    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    :cond_0
    return v0
.end method

.method public getHorizontalOffsetForDrawables()I
    .locals 2

    .line 467
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 468
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isChecked()Z
    .locals 1
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation

    .line 205
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    return v0
.end method

.method public isLayoutRtl()Z
    .locals 2

    .line 625
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 558
    invoke-super {p0}, Landroid/widget/Button;->jumpDrawablesToCurrentState()V

    .line 559
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 560
    :cond_0
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 2
    .param p1, "extraSpace"    # I

    .line 521
    add-int/lit8 v0, p1, 0x1

    invoke-super {p0, v0}, Landroid/widget/Button;->onCreateDrawableState(I)[I

    move-result-object v0

    .line 522
    .local v0, "drawableState":[I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 523
    sget-object v1, Lcom/oneplus/lib/widget/button/OPCompoundButton;->CHECKED_STATE_SET:[I

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mergeDrawableStates([I[I)[I

    .line 525
    :cond_0
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .line 473
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 474
    .local v0, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_4

    .line 475
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getGravity()I

    move-result v1

    and-int/lit8 v1, v1, 0x70

    .line 476
    .local v1, "verticalGravity":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    .line 477
    .local v2, "drawableHeight":I
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 480
    .local v3, "drawableWidth":I
    const/16 v4, 0x10

    const/4 v5, 0x0

    if-eq v1, v4, :cond_1

    const/16 v4, 0x50

    if-eq v1, v4, :cond_0

    .line 488
    move v4, v5

    goto :goto_0

    .line 482
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    .line 483
    .local v4, "top":I
    goto :goto_0

    .line 485
    .end local v4    # "top":I
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getHeight()I

    move-result v4

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    .line 486
    .restart local v4    # "top":I
    nop

    .line 488
    :goto_0
    nop

    .line 490
    add-int v6, v4, v2

    .line 491
    .local v6, "bottom":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getWidth()I

    move-result v5

    sub-int/2addr v5, v3

    nop

    .line 492
    .local v5, "left":I
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isLayoutRtl()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getWidth()I

    move-result v7

    goto :goto_1

    :cond_3
    move v7, v3

    .line 494
    .local v7, "right":I
    :goto_1
    invoke-virtual {v0, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 496
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 497
    .local v8, "background":Landroid/graphics/drawable/Drawable;
    if-eqz v8, :cond_4

    .line 498
    invoke-virtual {v8, v5, v4, v7, v6}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 502
    .end local v1    # "verticalGravity":I
    .end local v2    # "drawableHeight":I
    .end local v3    # "drawableWidth":I
    .end local v4    # "top":I
    .end local v5    # "left":I
    .end local v6    # "bottom":I
    .end local v7    # "right":I
    .end local v8    # "background":Landroid/graphics/drawable/Drawable;
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/Button;->onDraw(Landroid/graphics/Canvas;)V

    .line 504
    if-eqz v0, :cond_6

    .line 505
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getScrollX()I

    move-result v1

    .line 506
    .local v1, "scrollX":I
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getScrollY()I

    move-result v2

    .line 509
    .local v2, "scrollY":I
    if-nez v1, :cond_5

    if-nez v2, :cond_5

    .line 510
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 512
    :cond_5
    int-to-float v3, v1

    int-to-float v4, v2

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 513
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 514
    neg-int v3, v1

    int-to-float v3, v3

    neg-int v4, v2

    int-to-float v4, v4

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 517
    .end local v1    # "scrollX":I
    .end local v2    # "scrollY":I
    :cond_6
    :goto_2
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .line 426
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 427
    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 428
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    .line 429
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .line 433
    invoke-super {p0, p1}, Landroid/widget/Button;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 434
    const-class v0, Lcom/oneplus/lib/widget/button/OPCompoundButton;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 435
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    .line 436
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    .line 437
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 617
    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    .line 619
    .local v0, "ss":Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/Button;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 620
    iget-boolean v1, v0, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setChecked(Z)V

    .line 621
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->requestLayout()V

    .line 622
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 607
    invoke-super {p0}, Landroid/widget/Button;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 609
    .local v0, "superState":Landroid/os/Parcelable;
    new-instance v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 611
    .local v1, "ss":Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->isChecked()Z

    move-result v2

    iput-boolean v2, v1, Lcom/oneplus/lib/widget/button/OPCompoundButton$SavedState;->checked:Z

    .line 612
    return-object v1
.end method

.method public performClick()Z
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->toggle()V

    .line 193
    invoke-super {p0}, Landroid/widget/Button;->performClick()Z

    move-result v0

    .line 194
    .local v0, "handled":Z
    if-nez v0, :cond_0

    .line 197
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->playSoundEffect(I)V

    .line 200
    :cond_0
    return v0
.end method

.method public setButtonDrawable(I)V
    .locals 3
    .param p1, "resid"    # I

    .line 290
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    if-ne p1, v0, :cond_0

    .line 291
    return-void

    .line 294
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    .line 296
    const/4 v0, 0x0

    .line 297
    .local v0, "d":Landroid/graphics/drawable/Drawable;
    iget v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    if-eqz v1, :cond_1

    .line 298
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonResource:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 300
    :cond_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    return-void
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 6
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .line 309
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_3

    .line 310
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 312
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    .line 317
    if-eqz p1, :cond_3

    .line 318
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 323
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.graphics.drawable.Drawable"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 324
    .local v2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "setLayoutDirection"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 325
    .local v3, "m":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getLayoutDirection()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    .end local v2    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 326
    :catch_0
    move-exception v2

    .line 327
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v4, "setLayoutDirection with Exception!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 332
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getDrawableState()[I

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 334
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 335
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setMinHeight(I)V

    .line 336
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 339
    :cond_3
    return-void
.end method

.method public setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .line 362
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintList:Landroid/content/res/ColorStateList;

    .line 363
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTint:Z

    .line 365
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 366
    return-void
.end method

.method public setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1
    .param p1, "tintMode"    # Landroid/graphics/PorterDuff$Mode;

    .line 389
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 390
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mHasButtonTintMode:Z

    .line 392
    invoke-direct {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->applyButtonTint()V

    .line 393
    return-void
.end method

.method public setChecked(Z)V
    .locals 6
    .param p1, "checked"    # Z

    .line 214
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    if-eq v0, p1, :cond_3

    .line 215
    iput-boolean p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->refreshDrawableState()V

    .line 222
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "android.view.View"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 223
    .local v2, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v3, "notifyViewAccessibilityStateChangedIfNeeded"

    new-array v4, v0, [Ljava/lang/Class;

    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v5, v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 224
    .local v3, "m":Ljava/lang/reflect/Method;
    new-array v4, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-virtual {v3, p0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    .end local v2    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "m":Ljava/lang/reflect/Method;
    goto :goto_0

    .line 225
    :catch_0
    move-exception v2

    .line 226
    .local v2, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/oneplus/lib/widget/button/OPCompoundButton;->TAG:Ljava/lang/String;

    const-string v4, "notifyViewAccessibilityStateChangedIfNeeded with Exception!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    if-eqz v2, :cond_0

    .line 231
    return-void

    .line 234
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    .line 235
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v2}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    if-eqz v0, :cond_2

    .line 239
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    invoke-interface {v0, p0, v2}, Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;->onCheckedChanged(Lcom/oneplus/lib/widget/button/OPCompoundButton;Z)V

    .line 242
    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mBroadcasting:Z

    .line 244
    :cond_3
    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 253
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 254
    return-void
.end method

.method setOnCheckedChangeWidgetListener(Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 264
    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mOnCheckedChangeWidgetListener:Lcom/oneplus/lib/widget/button/OPCompoundButton$OnCheckedChangeListener;

    .line 265
    return-void
.end method

.method public toggle()V
    .locals 1

    .line 186
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mChecked:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPCompoundButton;->setChecked(Z)V

    .line 187
    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;

    .line 553
    invoke-super {p0, p1}, Landroid/widget/Button;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPCompoundButton;->mButtonDrawable:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
