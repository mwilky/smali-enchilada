.class public Lcom/oneplus/settings/ui/OPButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPButtonPreference.java"


# instance fields
.field private mButtonEnable:Z

.field private mButtonString:Ljava/lang/String;

.field private mButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/TextView;

.field private mTextButtonColor:Landroid/content/res/ColorStateList;

.field private mTextSummary:Landroid/widget/TextView;

.field private mTextSummaryString:Ljava/lang/String;

.field private mTextSummaryVisible:Z

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0149

    iput v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0149

    iput v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d0149

    iput v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLayoutResource(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getButtonString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftTextSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getLeftTextTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a02f7

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a047c

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02ff

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a02fe

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    if-eqz v1, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonEnable:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setButtonString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mButtonVisible:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextSummary(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLeftTextSummary(Ljava/lang/String;)V

    return-void
.end method

.method public setSummaryVisibility(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPButtonPreference;->mTextSummaryVisible:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    return-void
.end method
