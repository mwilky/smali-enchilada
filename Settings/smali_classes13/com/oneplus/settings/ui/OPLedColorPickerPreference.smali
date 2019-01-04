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

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/settings/ui/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    const v1, 0x7f0d014b

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060333

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060332

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    sget-object v1, Lcom/android/settings/R$styleable;->ColorPickerPreference:[I

    invoke-virtual {p1, p2, v1, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600c3

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mRippleEffectColor:I

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x7f0600c2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iput v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDisabledCellColor:I

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    const v2, 0x7f1203e8

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setNeutralButtonText(I)V

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setNegativeButtonText(I)V

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setPositiveButtonText(I)V

    const v2, 0x7f0d0186

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setDialogLayoutResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    if-nez v2, :cond_0

    iput-boolean v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    return-void
.end method

.method private isDefaultColor()Z
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColors:[Ljava/lang/String;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private setTmpColor(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    return-void
.end method

.method private updateSummary()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mUseColorLabelAsSummary:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v0, v0

    if-ltz v0, :cond_6

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

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    if-eqz v1, :cond_2

    if-ltz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    array-length v1, v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

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

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1203eb

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120aa6

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120da3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDisabledCellColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

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

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public getColor()Ljava/lang/String;
    .locals 1

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

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-object v0
.end method

.method public init()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    return-void
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onSetColorPalette([Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->updateSummary()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v0, v0

    const/16 v1, 0x8

    if-eqz v0, :cond_0

    const/4 v2, 0x4

    if-gt v0, v2, :cond_0

    const v2, 0x7f0a0121

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    if-lez v0, :cond_1

    new-instance v4, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$1;-><init>(Lcom/oneplus/settings/ui/OPLedColorPickerPreference;)V

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0x7f0a0336

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_3
    const v2, 0x7f1203ea

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setMessage(I)V

    :goto_2
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a010f
        0x7f0a0110
        0x7f0a0113
        0x7f0a0114
        0x7f0a0115
        0x7f0a0116
        0x7f0a0117
        0x7f0a0118
    .end array-data
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    nop

    const v0, 0x7f0a04b9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    iget-boolean v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected onDialogClosed(I)V
    .locals 6

    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onDialogClosed(I)V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const/4 v3, -0x3

    if-ne p1, v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    if-eqz v2, :cond_6

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-eqz v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_3
    move v0, v1

    nop

    :cond_4
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_5
    goto :goto_2

    :cond_6
    if-eqz v3, :cond_a

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-nez v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    if-eqz v4, :cond_8

    :cond_7
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    :cond_8
    move v0, v1

    nop

    :cond_9
    if-nez v0, :cond_a

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setColor(Ljava/lang/String;)V

    :cond_a
    :goto_2
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    const/16 v2, 0x8

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setSelection(Ljava/lang/String;I)V

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->setTmpColor(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    invoke-super {p0}, Lcom/oneplus/settings/ui/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mTmpColor:Ljava/lang/String;

    iput-object v2, v1, Lcom/oneplus/settings/ui/OPLedColorPickerPreference$SavedState;->tmpColor:Ljava/lang/String;

    return-object v1
.end method

.method protected onSetColor(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSetColorPalette([Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1

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

    return-void
.end method

.method public setColor(Ljava/lang/String;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->updateSummary()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->onSetColor(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mColor:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, p1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mImageView:Landroid/widget/ImageView;

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->persistString(Ljava/lang/String;)Z

    return-void
.end method

.method public setColorPalette([Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    return-void
.end method

.method public setColorPalette([Ljava/lang/String;[I)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPalette:[Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mPaletteNamesResIds:[I

    return-void
.end method

.method public setDefaultColor(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mDefaultColor:Ljava/lang/String;

    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/oneplus/settings/ui/CustomDialogPreference;->setEnabled(Z)V

    return-void
.end method

.method public setImageViewVisibility()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mVisibility:Z

    return-void
.end method

.method public setMessage(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMessageText(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setMessageText(Ljava/lang/CharSequence;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mMessageText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSelection(Ljava/lang/String;I)V
    .locals 4

    if-nez p1, :cond_0

    return-void

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

    :goto_0
    if-ltz v0, :cond_2

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPLedColorPickerPreference;->mViews:[Landroid/view/View;

    aget-object v2, v2, v0

    aget v3, v1, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void

    :array_0
    .array-data 4
        0x7f0a00f2
        0x7f0a00f3
        0x7f0a00f6
        0x7f0a00f7
        0x7f0a00f8
        0x7f0a00f9
        0x7f0a00fa
        0x7f0a00fb
    .end array-data
.end method
