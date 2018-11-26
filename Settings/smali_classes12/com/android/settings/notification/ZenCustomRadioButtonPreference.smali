.class public Lcom/android/settings/notification/ZenCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;,
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d020f

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d020f

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d020f

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const v0, 0x7f0d020f

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public getRadioButton()Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    return-object v0
.end method

.method protected getSecondTargetResId()I
    .locals 1

    const v0, 0x7f0d0213

    return v0
.end method

.method public isChecked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0101

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v1, 0x1020001

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    iput-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    iget-boolean v2, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_1
    const v1, 0x1020018

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a05ac

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_2
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020018

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0101

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    return-void
.end method
