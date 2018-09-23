.class public Lcom/android/settings/widget/MasterCheckBoxPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "MasterCheckBoxPreference.java"


# instance fields
.field private mCheckBox:Landroid/widget/CheckBox;

.field private mChecked:Z

.field private mEnableCheckBox:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/MasterCheckBoxPreference;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/widget/MasterCheckBoxPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/MasterCheckBoxPreference;Z)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->persistBoolean(Z)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getCheckBox()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method protected getSecondTargetResId()I
    .locals 1

    const v0, 0x7f0d0203

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x1020018

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/widget/MasterCheckBoxPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/MasterCheckBoxPreference$1;-><init>(Lcom/android/settings/widget/MasterCheckBoxPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x7f0a00f9

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/widget/MasterCheckBoxPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    iget-boolean v2, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_1
    return-void
.end method

.method public setCheckBoxEnabled(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mEnableCheckBox:Z

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/MasterCheckBoxPreference;->mCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->setEnabled(Z)V

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/MasterCheckBoxPreference;->setCheckBoxEnabled(Z)V

    return-void
.end method
