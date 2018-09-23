.class public Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;
.super Landroid/support/v7/preference/Preference;
.source "OPFingerPrintEditCategory.java"


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mContext:Landroid/content/Context;

.field private mFingerprintName:Ljava/lang/CharSequence;

.field private mFingerprintNameView:Landroid/widget/TextView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0160

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0160

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d0160

    iput v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0385

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public setFingerprintName(Ljava/lang/CharSequence;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintName:Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditCategory;->mFingerprintNameView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
