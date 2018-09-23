.class public abstract Lcom/android/settings/widget/TwoStateButtonPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TwoStateButtonPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButtonOff:Landroid/widget/Button;

.field private mButtonOn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/TwoStateButtonPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/TwoStateButtonPreference;->getStateOnButton()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/android/settings/widget/TwoStateButtonPreference;->getStateOffButton()Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public abstract onButtonClicked(Z)V
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a04dc

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->onButtonClicked(Z)V

    return-void
.end method

.method protected setButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method protected setButtonVisibility(Z)V
    .locals 3

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOff:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/TwoStateButtonPreferenceController;->mButtonOn:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method
