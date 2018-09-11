.class public Lcom/oneplus/settings/ui/OPLedColorPickerPreference;
.super Lcom/oneplus/settings/ui/CustomDialogPreference;
.source "OPLedColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private mColor:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

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

    .line 124
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .line 114
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 79
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    .line 85
    const v1, 0x7f0d0147

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setLayoutResource(I)V

    .line 86
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    .line 87
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    .line 88
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060331

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    .line 89
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060330

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    .line 91
    sget-object v1, Lcom/android/settings/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 93
    .local v1, "a":Landroid/content/res/TypedArray;
    nop

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 93
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mRippleEffectColor:I

    .line 95
    nop

    .line 96
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    .line 95
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDisabledCellColor:I

    .line 97
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 100
    const v2, 0x7f1203e8

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setNeutralButtonText(I)V

    .line 101
    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setNegativeButtonText(I)V

    .line 102
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setPositiveButtonText(I)V

    .line 103
    const v2, 0x7f0d017b

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDialogLayoutResource(I)V

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    .line 106
    iput-boolean v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0

    .line 108
    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    .line 110
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPLedColorPickerPreference;

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/settings/ui/OPLedColorPickerPreference;
    .param p1, "x1"    # Ljava/lang/String;

    .line 60
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method private isDefaultColor()Z
    .locals 4

    .line 468
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 469
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    const/4 v0, 0x1

    return v0

    .line 468
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 473
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 2
    .param p1, "color"    # Ljava/lang/String;

    .line 441
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 443
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 444
    return-void
.end method

.method private updateSummary()V
    .locals 3

    .line 447
    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v0, v0

    if-ltz v0, :cond_6

    .line 449
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 450
    .local v0, "index":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 451
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 452
    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->isDefaultColor()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    .line 462
    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .end local v0    # "index":I
    goto :goto_2

    .line 453
    .restart local v0    # "index":I
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 454
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120aa0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 455
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    .line 456
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 459
    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120d65

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 465
    .end local v0    # "index":I
    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6
    .param p1, "color"    # Ljava/lang/String;

    .line 241
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDisabledCellColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 243
    .local v0, "colorDrawable":Landroid/graphics/drawable/ColorDrawable;
    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    new-array v3, v2, [[I

    const/4 v4, 0x0

    new-array v5, v4, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    iget v5, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mRippleEffectColor:I

    aput v5, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 251
    .local v1, "colorStateList":Landroid/content/res/ColorStateList;
    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getDefaultColor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getDefaultColor()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    .line 178
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    .line 179
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 180
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 181
    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .line 319
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 322
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    .line 323
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->updateSummary()V

    .line 326
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v0, v0

    .line 328
    .local v0, "paletteLenght":I
    const/16 v1, 0x8

    if-eqz v0, :cond_0

    .line 329
    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    .line 331
    const v2, 0x7f0a011a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    :cond_0
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 345
    .local v1, "ids":[I
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    .line 346
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    .line 347
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    .line 348
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 349
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 350
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    if-lez v0, :cond_1

    new-instance v4, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;-><init>(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)V

    goto :goto_1

    .line 362
    :cond_1
    const/4 v4, 0x0

    .line 350
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    .end local v2    # "i":I
    :cond_2
    const v2, 0x7f0a0312

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    .line 367
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    .line 368
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 370
    :cond_3
    const v2, 0x7f1203ea

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessage(I)V

    .line 373
    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->init()V

    .line 374
    return-void

    nop

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
    .end array-data
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 130
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 131
    nop

    .line 132
    const v0, 0x7f0a0483

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    .line 133
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 136
    .local v0, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    .local v1, "showColor":Ljava/lang/String;
    goto :goto_0

    .line 141
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 144
    .restart local v1    # "showColor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 145
    iget-boolean v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    if-eqz v2, :cond_1

    .line 146
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 149
    .end local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method protected onDialogClosed(I)V
    .locals 6
    .param p1, "whichButton"    # I

    .line 378
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    .line 380
    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 381
    .local v2, "positiveResult":Z
    :goto_0
    const/4 v3, -0x3

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    .line 383
    .local v3, "defaultResult":Z
    :goto_1
    if-eqz v2, :cond_6

    .line 384
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    .line 385
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v1

    nop

    .line 387
    .local v0, "equal":Z
    :cond_4
    if-nez v0, :cond_5

    .line 388
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 390
    .end local v0    # "equal":Z
    :cond_5
    goto :goto_2

    :cond_6
    if-eqz v3, :cond_a

    .line 391
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 392
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v0, v1

    nop

    .line 394
    .restart local v0    # "equal":Z
    :cond_9
    if-nez v0, :cond_a

    .line 395
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 398
    .end local v0    # "equal":Z
    :cond_a
    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .line 424
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 430
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    .line 431
    .local v0, "myState":Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 434
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_1

    .line 435
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    .line 436
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    .line 438
    :cond_1
    return-void

    .line 426
    .end local v0    # "myState":Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 427
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 407
    invoke-super {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 410
    .local v0, "superState":Landroid/os/Parcelable;
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 412
    return-object v0

    .line 416
    :cond_0
    new-instance v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 418
    .local v1, "myState":Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    .line 419
    return-object v1
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .line 283
    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .line 299
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .line 402
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    .line 193
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->updateSummary()V

    .line 194
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 200
    .local v0, "imageDrawable":Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 202
    move-object v1, p1

    .local v1, "showColor":Ljava/lang/String;
    goto :goto_0

    .line 205
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 208
    .restart local v1    # "showColor":Ljava/lang/String;
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 210
    .end local v0    # "imageDrawable":Landroid/graphics/drawable/Drawable;
    .end local v1    # "showColor":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->persistString(Ljava/lang/String;)Z

    .line 211
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;

    .line 236
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 237
    return-void
.end method

.method public setColorPalette([Ljava/lang/String;[I)V
    .locals 0
    .param p1, "colors"    # [Ljava/lang/String;
    .param p2, "colorStringResIds"    # [I

    .line 230
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    .line 231
    iput-object p2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    .line 232
    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0
    .param p1, "color"    # Ljava/lang/String;

    .line 220
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    .line 221
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .line 311
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setEnabled(Z)V

    .line 315
    return-void
.end method

.method public setImageViewVisibility()V
    .locals 1

    .line 152
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    .line 153
    return-void
.end method

.method public setMessage(I)V
    .locals 2
    .param p1, "messageResId"    # I

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 164
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 158
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 159
    return-void
.end method

.method public setMessageText(I)V
    .locals 1
    .param p1, "messageResId"    # I

    .line 173
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 174
    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/CharSequence;

    .line 168
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    .line 169
    return-void
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 4
    .param p1, "color"    # Ljava/lang/String;
    .param p2, "visibility"    # I

    .line 260
    if-nez p1, :cond_0

    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 262
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_2

    .line 263
    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    .line 273
    .local v1, "ids":[I
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v2, v2, v0

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    .line 275
    .end local v1    # "ids":[I
    :cond_2
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
    .end array-data
.end method
