.class public Lcom/oneplus/settings/ui/ColorPickerPreference;
.super Lcom/oneplus/settings/ui/CustomDialogPreference;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;,
        Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;
    }
.end annotation


# static fields
.field public static final CUSTOMCOLORINDEX:I = 0xb


# instance fields
.field private mColor:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomColorClickListener:Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

.field private mDefaultColor:Ljava/lang/String;

.field private mDefaultColors:[Ljava/lang/String;

.field private mDisabledCellColor:I

.field mImageView:Landroid/widget/ImageView;

.field private mMessage:Landroid/widget/TextView;

.field private mMessageText:Ljava/lang/CharSequence;

.field private mPalette:[Ljava/lang/String;

.field private mPaletteNamesResIds:[I

.field private mRippleEffectColor:I

.field private mTmpColor:Ljava/lang/String;

.field private mUseColorLabelAsSummary:Z

.field private mViews:[Landroid/view/View;

.field private mVisibility:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 129
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 89
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 74
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    .line 90
    const v1, 0x7f0d0147

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setLayoutResource(I)V

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    .line 92
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060330

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    .line 96
    sget-object v1, Lcom/android/settings/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 98
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 99
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 98
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mRippleEffectColor:I

    .line 100
    nop

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 100
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDisabledCellColor:I

    .line 102
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    const v2, 0x7f1203e8

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setNeutralButtonText(I)V

    .line 106
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setNegativeButtonText(I)V

    .line 107
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setPositiveButtonText(I)V

    .line 108
    const v2, 0x7f0d01e1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setDialogLayoutResource(I)V

    .line 109
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 111
    iput-boolean v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0

    .line 113
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    .line 115
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/ColorPickerPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/ColorPickerPreference;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/ColorPickerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/ui/ColorPickerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .line 64
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/ColorPickerPreference;)Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/ColorPickerPreference;

    .line 64
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mCustomColorClickListener:Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

    return-object v0
.end method

.method private isDefaultColor()Z
    .locals 4

    .line 525
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 526
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 527
    const/4 v0, 0x1

    return v0

    .line 525
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 530
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .line 488
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 491
    return-void
.end method

.method private updateSummary()V
    .locals 4

    .line 494
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v0, v0

    if-ltz v0, :cond_8

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 497
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 498
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 499
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->isDefaultColor()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 519
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v0    # "index":I
    goto/16 :goto_2

    .line 500
    .restart local v0    # "index":I
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_5

    .line 501
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120aa0

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 503
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 505
    :cond_5
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isThemeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->SW:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 506
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120d8e

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 507
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 508
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 510
    :cond_6
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isThemeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->AVG:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 511
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120d95

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 512
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_8

    .line 513
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 516
    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120d69

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 522
    .end local v0    # "index":I
    :cond_8
    :goto_2
    return-void
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .line 249
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 250
    iget v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDisabledCellColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 251
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    new-array v3, v2, [[I

    const/4 v4, 0x0

    new-array v5, v4, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    iget v5, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mRippleEffectColor:I

    aput v5, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 259
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 223
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 186
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 187
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 189
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;

    .line 334
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 337
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    .line 338
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->updateSummary()V

    .line 341
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v0, v0

    .line 343
    .local v0, "paletteLenght":I
    if-eqz v0, :cond_0

    .line 344
    const/4 v1, 0x4

    if-gt v0, v1, :cond_0

    .line 346
    const v1, 0x7f0a011a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_0
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 364
    .local v1, "ids":[I
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    .line 365
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 366
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    .line 367
    const/16 v3, 0xb

    if-ne v2, v3, :cond_4

    .line 368
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oneplus_accent_color"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    .local v3, "customColor":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 370
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oneplus_white_custom_accent_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 371
    :cond_1
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 372
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "oneplus_black_custom_accent_color"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 374
    :cond_2
    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 375
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v4, v4, v2

    invoke-virtual {p0, v3}, Lcom/oneplus/settings/ui/ColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2

    .line 377
    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v4, v4, v2

    const v5, 0x7f080327

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V

    .line 379
    .end local v3    # "customColor":Ljava/lang/String;
    :goto_2
    goto :goto_3

    .line 380
    :cond_4
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ui/ColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 382
    :goto_3
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 383
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    if-lez v0, :cond_5

    new-instance v4, Lcom/oneplus/settings/ui/ColorPickerPreference$1;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/ui/ColorPickerPreference$1;-><init>(Lcom/oneplus/settings/ui/ColorPickerPreference;)V

    goto :goto_4

    .line 400
    :cond_5
    const/4 v4, 0x0

    .line 383
    :goto_4
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 365
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 404
    .end local v2    # "i":I
    :cond_6
    const v2, 0x7f0a0312

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    .line 405
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 406
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 408
    :cond_7
    const v2, 0x7f1203ea

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setMessage(I)V

    .line 411
    :goto_5
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->init()V

    .line 412
    return-void

    :array_0
    .array-data 4
        0x7f0a0108
        0x7f0a0109
        0x7f0a010c
        0x7f0a010d
        0x7f0a010e
        0x7f0a010f
        0x7f0a0110
        0x7f0a0111
        0x7f0a0112
        0x7f0a0113
        0x7f0a010a
        0x7f0a010b
    .end array-data
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 135
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 136
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 137
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 138
    nop

    .line 139
    const v1, 0x7f0a0485

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    .line 140
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_2

    .line 141
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 143
    .local v1, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .local v2, "showColor":Ljava/lang/String;
    goto :goto_0

    .line 148
    .end local v2    # "showColor":Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 150
    .restart local v2    # "showColor":Ljava/lang/String;
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 151
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 153
    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    .end local v1    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v2    # "showColor":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method protected onDialogClosed(I)V
    .locals 6
    .param p1, "whichButton"    # I

    .line 426
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    .line 428
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 429
    .local v2, "positiveResult":Z
    :goto_0
    const/4 v3, -0x3

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 431
    .local v3, "defaultResult":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 432
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 433
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v1

    nop

    .line 434
    .local v0, "equal":Z
    :cond_4
    if-nez v0, :cond_5

    .line 435
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 437
    .end local v0    # "equal":Z
    :cond_5
    goto :goto_2

    :cond_6
    if-eqz v3, :cond_a

    .line 438
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 439
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v0, v1

    nop

    .line 441
    .restart local v0    # "equal":Z
    :cond_9
    if-nez v0, :cond_a

    .line 442
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 445
    .end local v0    # "equal":Z
    :cond_a
    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 471
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 477
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    .line 478
    .local v0, "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 481
    iget-object v1, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_1

    .line 482
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 483
    iget-object v1, v0, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    .line 485
    :cond_1
    return-void

    .line 473
    .end local v0    # "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 474
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 454
    invoke-super {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 457
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 459
    return-object v0

    .line 463
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 465
    .local v1, "myState":Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/oneplus/settings/ui/ColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    .line 466
    return-object v1
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .line 298
    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .line 314
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 449
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;

    .line 193
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    .line 201
    invoke-direct {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->updateSummary()V

    .line 202
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 206
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 208
    .local v0, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 210
    move-object v1, p1

    .local v1, "showColor":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 216
    .restart local v1    # "showColor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 218
    .end local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 219
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .line 244
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 245
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;[I)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;
    .param p2, "colorStringResIds"    # [I

    .line 238
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 239
    iput-object p2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPaletteNamesResIds:[I

    .line 240
    return-void
.end method

.method public setCustomBgColor(Ljava/lang/String;)V
    .locals 3
    .param p1, "bgColor"    # Ljava/lang/String;

    .line 415
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    .line 416
    .local v0, "customView":Landroid/view/View;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 419
    :cond_0
    if-eqz v0, :cond_1

    .line 420
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/ColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    :cond_1
    return-void
.end method

.method public setCustomColorClickListener(Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

    .line 539
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mCustomColorClickListener:Lcom/oneplus/settings/ui/ColorPickerPreference$CustomColorClickListener;

    .line 540
    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .line 228
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 229
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 326
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setEnabled(Z)V

    .line 330
    return-void
.end method

.method public setImageViewVisibility()V
    .locals 1

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mVisibility:Z

    .line 161
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .line 171
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 172
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 166
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public setMessageText(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .line 181
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 182
    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 176
    iput-object p1, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 177
    return-void
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .line 268
    if-nez p1, :cond_0

    return-void

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 270
    .local v0, "index":I
    :goto_0
    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 285
    .local v1, "ids":[I
    if-ltz v0, :cond_2

    .line 286
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v2, v2, v0

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/ColorPickerPreference;->mViews:[Landroid/view/View;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v2, v2, v3

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget v3, v1, v3

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 290
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x7f0a00eb
        0x7f0a00ec
        0x7f0a00ef
        0x7f0a00f0
        0x7f0a00f1
        0x7f0a00f2
        0x7f0a00f3
        0x7f0a00f4
        0x7f0a00f5
        0x7f0a00f6
        0x7f0a00ed
        0x7f0a00ee
    .end array-data
.end method
