.class public Lcom/android/settings/widget/DisabledCheckBoxPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "DisabledCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/view/View;

.field private mEnabledCheckBox:Z

.field private mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method private setupDisabledCheckBoxPreference(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-super {p0, v2}, Landroid/support/v7/preference/CheckBoxPreference;->setEnabled(Z)V

    iget-boolean v1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {p0, v1}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    return-void
.end method


# virtual methods
.method public enableCheckbox(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;

    iget-object v0, v0, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iput-object p1, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mViewHolder:Landroid/support/v7/preference/PreferenceViewHolder;

    const v0, 0x1020001

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mCheckBox:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/DisabledCheckBoxPreference;->enableCheckbox(Z)V

    return-void
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/DisabledCheckBoxPreference;->mEnabledCheckBox:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->performClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
