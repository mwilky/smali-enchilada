.class public Lcom/oneplus/aod/battery/BatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "BatteryDashChargeView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDark:Z

.field private mDarkIntensity:F

.field private mIconTint:I

.field private mLevel:I

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 45
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 46
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    .line 33
    iput v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mIconTint:I

    .line 35
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    .line 52
    iput-object p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    .line 53
    return-void
.end method

.method private applyIconTint()V
    .locals 0

    .line 81
    return-void
.end method

.method private getImageResId()I
    .locals 4

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, "resId":I
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-nez v1, :cond_1

    .line 101
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_0

    .line 102
    const v1, 0x7f070114

    goto :goto_0

    .line 103
    :cond_0
    const v1, 0x7f070115

    :goto_0
    move v0, v1

    goto/16 :goto_11

    .line 104
    :cond_1
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0xb

    if-lez v1, :cond_3

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_3

    .line 105
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_2

    .line 106
    const v1, 0x7f070116

    goto :goto_1

    .line 107
    :cond_2
    const v1, 0x7f070125

    :goto_1
    move v0, v1

    goto/16 :goto_11

    .line 108
    :cond_3
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x11

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_5

    .line 109
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_4

    .line 110
    const v1, 0x7f070126

    goto :goto_2

    .line 111
    :cond_4
    const v1, 0x7f070127

    :goto_2
    move v0, v1

    goto/16 :goto_11

    .line 112
    :cond_5
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x17

    if-le v1, v3, :cond_7

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_7

    .line 113
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_6

    .line 114
    const v1, 0x7f070128

    goto :goto_3

    .line 115
    :cond_6
    const v1, 0x7f070129

    :goto_3
    move v0, v1

    goto/16 :goto_11

    .line 116
    :cond_7
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x1d

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_9

    .line 117
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_8

    .line 118
    const v1, 0x7f07012a

    goto :goto_4

    .line 119
    :cond_8
    const v1, 0x7f07012b

    :goto_4
    move v0, v1

    goto/16 :goto_11

    .line 120
    :cond_9
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-le v1, v3, :cond_b

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_b

    .line 121
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_a

    .line 122
    const v1, 0x7f07012c

    goto :goto_5

    .line 123
    :cond_a
    const v1, 0x7f07012d

    :goto_5
    move v0, v1

    goto/16 :goto_11

    .line 124
    :cond_b
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x29

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_d

    .line 125
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_c

    .line 126
    const v1, 0x7f07012e

    goto :goto_6

    .line 127
    :cond_c
    const v1, 0x7f07012f

    :goto_6
    move v0, v1

    goto/16 :goto_11

    .line 128
    :cond_d
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-le v1, v3, :cond_f

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_f

    .line 129
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_e

    .line 130
    const v1, 0x7f070130

    goto :goto_7

    .line 131
    :cond_e
    const v1, 0x7f070131

    :goto_7
    move v0, v1

    goto/16 :goto_11

    .line 132
    :cond_f
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x35

    if-le v1, v2, :cond_11

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_11

    .line 133
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_10

    .line 134
    const v1, 0x7f070132

    goto :goto_8

    .line 135
    :cond_10
    const v1, 0x7f070133

    :goto_8
    move v0, v1

    goto/16 :goto_11

    .line 136
    :cond_11
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-le v1, v3, :cond_13

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_13

    .line 137
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_12

    .line 138
    const v1, 0x7f070134

    goto :goto_9

    .line 139
    :cond_12
    const v1, 0x7f070135

    :goto_9
    move v0, v1

    goto/16 :goto_11

    .line 140
    :cond_13
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x41

    if-le v1, v2, :cond_15

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_15

    .line 141
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_14

    .line 142
    const v1, 0x7f070117

    goto :goto_a

    .line 143
    :cond_14
    const v1, 0x7f070118

    :goto_a
    move v0, v1

    goto/16 :goto_11

    .line 144
    :cond_15
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-le v1, v3, :cond_17

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_17

    .line 145
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_16

    .line 146
    const v1, 0x7f070119

    goto :goto_b

    .line 147
    :cond_16
    const v1, 0x7f07011a

    :goto_b
    move v0, v1

    goto/16 :goto_11

    .line 148
    :cond_17
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x4d

    if-le v1, v2, :cond_19

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_19

    .line 149
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_18

    .line 150
    const v1, 0x7f07011b

    goto :goto_c

    .line 151
    :cond_18
    const v1, 0x7f07011c

    :goto_c
    move v0, v1

    goto/16 :goto_11

    .line 152
    :cond_19
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-le v1, v3, :cond_1b

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1b

    .line 153
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1a

    .line 154
    const v1, 0x7f07011d

    goto :goto_d

    .line 155
    :cond_1a
    const v1, 0x7f07011e

    :goto_d
    move v0, v1

    goto :goto_11

    .line 156
    :cond_1b
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x59

    if-le v1, v2, :cond_1d

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_1d

    .line 157
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1c

    .line 158
    const v1, 0x7f07011f

    goto :goto_e

    .line 159
    :cond_1c
    const v1, 0x7f070120

    :goto_e
    move v0, v1

    goto :goto_11

    .line 160
    :cond_1d
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-le v1, v3, :cond_1f

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1f

    .line 161
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1e

    .line 162
    const v1, 0x7f070121

    goto :goto_f

    .line 163
    :cond_1e
    const v1, 0x7f070122

    :goto_f
    move v0, v1

    goto :goto_11

    .line 164
    :cond_1f
    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-le v1, v2, :cond_21

    iget v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_21

    .line 165
    iget-boolean v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_20

    .line 166
    const v1, 0x7f070123

    goto :goto_10

    .line 167
    :cond_20
    const v1, 0x7f070124

    :goto_10
    move v0, v1

    .line 169
    :cond_21
    :goto_11
    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    .line 69
    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    .line 72
    invoke-virtual {p0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 73
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 74
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06006a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 75
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    return-void
.end method

.method public setIconTint(IFLandroid/graphics/Rect;)V
    .locals 2
    .param p1, "tint"    # I
    .param p2, "darkIntensity"    # F
    .param p3, "tintArea"    # Landroid/graphics/Rect;

    .line 57
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mIconTint:I

    if-ne p1, v0, :cond_1

    iget v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDarkIntensity:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    .line 58
    invoke-virtual {v0, p3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 59
    .local v0, "changed":Z
    :goto_1
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mIconTint:I

    .line 60
    iput p2, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mDarkIntensity:F

    .line 61
    iget-object v1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    invoke-virtual {v1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 62
    if-eqz v0, :cond_2

    .line 63
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->applyIconTint()V

    .line 65
    :cond_2
    return-void
.end method

.method public setLevel(IZ)V
    .locals 1
    .param p1, "level"    # I
    .param p2, "force"    # Z

    .line 91
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    .line 92
    :cond_0
    iput p1, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    .line 93
    invoke-direct {p0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->getImageResId()I

    move-result v0

    .line 94
    .local v0, "resId":I
    invoke-virtual {p0, v0}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setImageResource(I)V

    .line 96
    .end local v0    # "resId":I
    :cond_1
    return-void
.end method

.method public updateDisplayAndTextSize(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 86
    iget v0, p0, Lcom/oneplus/aod/battery/BatteryDashChargeView;->mLevel:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/battery/BatteryDashChargeView;->setLevel(IZ)V

    .line 87
    return-void
.end method
