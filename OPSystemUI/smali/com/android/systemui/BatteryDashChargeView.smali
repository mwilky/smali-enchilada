.class public Lcom/android/systemui/BatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "BatteryDashChargeView.java"


# instance fields
.field private mDark:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/BatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    return-void
.end method

.method private getImageResId()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_0

    const v1, 0x7f080398

    goto :goto_0

    :cond_0
    const v1, 0x7f080399

    :goto_0
    move v0, v1

    goto/16 :goto_11

    :cond_1
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0xb

    if-lez v1, :cond_3

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_2

    const v1, 0x7f08039a

    goto :goto_1

    :cond_2
    const v1, 0x7f0803a9

    :goto_1
    move v0, v1

    goto/16 :goto_11

    :cond_3
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x11

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_4

    const v1, 0x7f0803aa

    goto :goto_2

    :cond_4
    const v1, 0x7f0803ab

    :goto_2
    move v0, v1

    goto/16 :goto_11

    :cond_5
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x17

    if-le v1, v3, :cond_7

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_6

    const v1, 0x7f0803ac

    goto :goto_3

    :cond_6
    const v1, 0x7f0803ad

    :goto_3
    move v0, v1

    goto/16 :goto_11

    :cond_7
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x1d

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_9

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_8

    const v1, 0x7f0803ae

    goto :goto_4

    :cond_8
    const v1, 0x7f0803af

    :goto_4
    move v0, v1

    goto/16 :goto_11

    :cond_9
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-le v1, v3, :cond_b

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_b

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_a

    const v1, 0x7f0803b0

    goto :goto_5

    :cond_a
    const v1, 0x7f0803b1

    :goto_5
    move v0, v1

    goto/16 :goto_11

    :cond_b
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x29

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_d

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_c

    const v1, 0x7f0803b2

    goto :goto_6

    :cond_c
    const v1, 0x7f0803b3

    :goto_6
    move v0, v1

    goto/16 :goto_11

    :cond_d
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-le v1, v3, :cond_f

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_f

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_e

    const v1, 0x7f0803b4

    goto :goto_7

    :cond_e
    const v1, 0x7f0803b5

    :goto_7
    move v0, v1

    goto/16 :goto_11

    :cond_f
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x35

    if-le v1, v2, :cond_11

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_11

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_10

    const v1, 0x7f0803b6

    goto :goto_8

    :cond_10
    const v1, 0x7f0803b7

    :goto_8
    move v0, v1

    goto/16 :goto_11

    :cond_11
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-le v1, v3, :cond_13

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_13

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_12

    const v1, 0x7f0803b8

    goto :goto_9

    :cond_12
    const v1, 0x7f0803b9

    :goto_9
    move v0, v1

    goto/16 :goto_11

    :cond_13
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x41

    if-le v1, v2, :cond_15

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_15

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_14

    const v1, 0x7f08039b

    goto :goto_a

    :cond_14
    const v1, 0x7f08039c

    :goto_a
    move v0, v1

    goto/16 :goto_11

    :cond_15
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-le v1, v3, :cond_17

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_17

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_16

    const v1, 0x7f08039d

    goto :goto_b

    :cond_16
    const v1, 0x7f08039e

    :goto_b
    move v0, v1

    goto/16 :goto_11

    :cond_17
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x4d

    if-le v1, v2, :cond_19

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_19

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_18

    const v1, 0x7f08039f

    goto :goto_c

    :cond_18
    const v1, 0x7f0803a0

    :goto_c
    move v0, v1

    goto/16 :goto_11

    :cond_19
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-le v1, v3, :cond_1b

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1b

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1a

    const v1, 0x7f0803a1

    goto :goto_d

    :cond_1a
    const v1, 0x7f0803a2

    :goto_d
    move v0, v1

    goto :goto_11

    :cond_1b
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v3, 0x59

    if-le v1, v2, :cond_1d

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_1d

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1c

    const v1, 0x7f0803a3

    goto :goto_e

    :cond_1c
    const v1, 0x7f0803a4

    :goto_e
    move v0, v1

    goto :goto_11

    :cond_1d
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-le v1, v3, :cond_1f

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1f

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1e

    const v1, 0x7f0803a5

    goto :goto_f

    :cond_1e
    const v1, 0x7f0803a6

    :goto_f
    move v0, v1

    goto :goto_11

    :cond_1f
    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-le v1, v2, :cond_21

    iget v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_21

    iget-boolean v1, p0, Lcom/android/systemui/BatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_20

    const v1, 0x7f0803a7

    goto :goto_10

    :cond_20
    const v1, 0x7f0803a8

    :goto_10
    move v0, v1

    :cond_21
    :goto_11
    return v0
.end method


# virtual methods
.method public setIconTint(I)V
    .locals 1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryDashChargeView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public setLevel(IZ)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    invoke-direct {p0}, Lcom/android/systemui/BatteryDashChargeView;->getImageResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/BatteryDashChargeView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public updateDisplayAndTextSize()V
    .locals 2

    iget v0, p0, Lcom/android/systemui/BatteryDashChargeView;->mLevel:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/BatteryDashChargeView;->setLevel(IZ)V

    return-void
.end method
