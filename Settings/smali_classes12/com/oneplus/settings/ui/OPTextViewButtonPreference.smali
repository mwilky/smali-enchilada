.class public Lcom/oneplus/settings/ui/OPTextViewButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPTextViewButtonPreference.java"


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

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 36
    const v0, 0x7f0d01c1

    iput v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 36
    const v0, 0x7f0d01c1

    iput v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    .line 57
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 36
    const v0, 0x7f0d01c1

    iput v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    .line 52
    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    .line 53
    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 66
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mContext:Landroid/content/Context;

    .line 67
    iget v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setLayoutResource(I)V

    .line 68
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 69
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    .line 77
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    .line 78
    return-void
.end method


# virtual methods
.method public getButtonString()Ljava/lang/String;
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/TextView;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftTextTitle()Ljava/lang/String;
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 83
    const v0, 0x7f0a02d9

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    .line 84
    const v0, 0x7f0a0450

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    .line 85
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 86
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 87
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 89
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    const v0, 0x7f0a02dd

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitle:Landroid/widget/TextView;

    .line 91
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 94
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 96
    :cond_1
    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .line 107
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    .line 108
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    .line 109
    return-void
.end method

.method public setButtonString(Ljava/lang/String;)V
    .locals 0
    .param p1, "buttonString"    # Ljava/lang/String;

    .line 127
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    .line 128
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    .line 129
    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 112
    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    .line 113
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    .line 114
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .line 137
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 138
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    .line 139
    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0
    .param p1, "title"    # Ljava/lang/String;

    .line 117
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    .line 118
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    .line 119
    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "onClickListener"    # Landroid/view/View$OnClickListener;

    .line 99
    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 100
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 148
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    .line 149
    return-void
.end method
