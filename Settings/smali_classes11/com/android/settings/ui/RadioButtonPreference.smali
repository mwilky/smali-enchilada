.class public Lcom/android/settings/ui/RadioButtonPreference;
.super Landroid/support/v7/preference/CheckBoxPreference;
.source "RadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/ui/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .line 50
    const v0, 0x7f04007d

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/ui/RadioButtonPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/CheckBoxPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    .line 46
    const v0, 0x7f0d0205

    invoke-virtual {p0, v0}, Lcom/android/settings/ui/RadioButtonPreference;->setWidgetLayoutResource(I)V

    .line 47
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2
    .param p1, "view"    # Landroid/support/v7/preference/PreferenceViewHolder;

    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/preference/CheckBoxPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 71
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    .line 72
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    .line 73
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 74
    .local v1, "title":Landroid/widget/TextView;
    if-eqz v1, :cond_0

    .line 75
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 76
    const/4 v0, 0x3

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 78
    :cond_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;->onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V

    .line 66
    :cond_0
    return-void
.end method

.method public setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    .line 58
    iput-object p1, p0, Lcom/android/settings/ui/RadioButtonPreference;->mListener:Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;

    .line 59
    return-void
.end method
