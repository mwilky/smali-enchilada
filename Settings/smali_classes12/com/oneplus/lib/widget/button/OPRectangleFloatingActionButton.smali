.class public Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "OPRectangleFloatingActionButton.java"


# instance fields
.field private mIsDisappear1:Z

.field private mIsDisappear2:Z

.field private mIsSwitchState:Z

.field private mNormalImageView:Landroid/widget/ImageView;

.field private mSwitchImageView:Landroid/widget/ImageView;

.field private mTempImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 43
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPRectangleFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    .line 121
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    .line 179
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    .line 48
    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_RectangleFloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton_op_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 53
    .local v1, "backgroundTint":Landroid/content/res/ColorStateList;
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->op_rectangle_floating_action_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 54
    .local v2, "backgroundDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 55
    .local v3, "shapeDrawable":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 56
    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$color;->white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 58
    .local v4, "rippleDrawable":Landroid/graphics/drawable/RippleDrawable;
    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    .line 61
    .local v5, "inflater":Landroid/view/LayoutInflater;
    sget v6, Lcom/oneplus/commonctrl/R$layout;->op_float_switch_button:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 62
    sget v6, Lcom/oneplus/commonctrl/R$id;->normal_imageview:I

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    .line 63
    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton_op_image:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 64
    .local v6, "src":Landroid/graphics/drawable/Drawable;
    iget-object v7, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget v7, Lcom/oneplus/commonctrl/R$id;->switch_imageview:I

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    .line 66
    return-void
.end method


# virtual methods
.method public doFabAppearSwitch1(I)V
    .locals 3
    .param p1, "resID"    # I

    .line 213
    const-string v0, "OPRectangleFloatingActionButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFabAppearSwitch1 mIsSwitchState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    const-string v0, "OPRectangleFloatingActionButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doFabAppearSwitch1 isDisappear1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->isFabDisappear1()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 216
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->isSwitchState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setSwitchImageView(I)V

    goto :goto_0

    .line 219
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setImageResource(I)V

    .line 221
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->fabAppears1()V

    goto :goto_1

    .line 222
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->isSwitchState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 223
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setImageResource(I)V

    .line 224
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->fabSwitchRevert()V

    goto :goto_1

    .line 226
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setSwitchImageView(I)V

    .line 227
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->fabSwitch()V

    .line 229
    :goto_1
    return-void
.end method

.method public fabAppears1()V
    .locals 3

    .line 112
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    .line 113
    const-string v0, "OPRectangleFloatingActionButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fabAppears1 mIsDisappear1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 115
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 116
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 117
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 118
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 119
    return-void
.end method

.method public fabAppears2()V
    .locals 3

    .line 135
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    .line 136
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 137
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 138
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 139
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 140
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 141
    return-void
.end method

.method public fabDisappear1()V
    .locals 3

    .line 102
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    .line 103
    const-string v0, "OPRectangleFloatingActionButton"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fabDisappear1 mIsDisappear1:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 105
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 106
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 107
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 108
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 109
    return-void
.end method

.method public fabDisappear2()V
    .locals 3

    .line 126
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    .line 127
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 130
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 131
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 132
    return-void
.end method

.method public fabSlide()V
    .locals 4

    .line 144
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 145
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 146
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 147
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 148
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 149
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 150
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 151
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 153
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 154
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 155
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 156
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 158
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 159
    return-void
.end method

.method public fabSlideRevert()V
    .locals 5

    .line 162
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotType(I)V

    .line 163
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 164
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 165
    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v4, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 166
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 167
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 169
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 170
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 171
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 172
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 174
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 175
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 176
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 177
    return-void
.end method

.method public fabSwitch()V
    .locals 4

    .line 185
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    .line 186
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 187
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 188
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 189
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 190
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 191
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 192
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 194
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 195
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 196
    return-void
.end method

.method public fabSwitchRevert()V
    .locals 4

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    .line 200
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 201
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 202
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 203
    const-wide/16 v1, 0xe1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v3, Lcom/oneplus/lib/util/AnimatorUtils;->FastOutLinearInInterpolator:Landroid/view/animation/Interpolator;

    .line 204
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 205
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 206
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 207
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    sget-object v1, Lcom/oneplus/lib/util/AnimatorUtils;->LinearOutSlowInInterpolator:Landroid/view/animation/Interpolator;

    .line 209
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    .line 210
    return-void
.end method

.method public isFabDisappear1()Z
    .locals 1

    .line 98
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    return v0
.end method

.method public isFabDisappear2()Z
    .locals 1

    .line 123
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    return v0
.end method

.method public isSwitchState()Z
    .locals 1

    .line 181
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    return v0
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 69
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 70
    return-void
.end method

.method public setNormalImageView(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 73
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    return-void
.end method

.method public setNormalImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 77
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 78
    return-void
.end method

.method public setPivotType(I)V
    .locals 2
    .param p1, "type"    # I

    .line 233
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 267
    :pswitch_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 268
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 269
    goto/16 :goto_0

    .line 263
    :pswitch_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 264
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 265
    goto :goto_0

    .line 259
    :pswitch_2
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 261
    goto :goto_0

    .line 255
    :pswitch_3
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 256
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 257
    goto :goto_0

    .line 251
    :pswitch_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 252
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 253
    goto :goto_0

    .line 247
    :pswitch_5
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 248
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 249
    goto :goto_0

    .line 243
    :pswitch_6
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 244
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 245
    goto :goto_0

    .line 239
    :pswitch_7
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 240
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 241
    goto :goto_0

    .line 235
    :pswitch_8
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotY(F)V

    .line 236
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setPivotX(F)V

    .line 237
    nop

    .line 274
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setSwitchImageView(I)V
    .locals 2
    .param p1, "resId"    # I

    .line 81
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 82
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 84
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 86
    :cond_0
    return-void
.end method

.method public setSwitchImageView(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 89
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 90
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 92
    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 94
    :cond_0
    return-void
.end method
