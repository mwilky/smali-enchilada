.class public Lcom/android/settingslib/CustomEditTextPreference;
.super Landroid/support/v7/preference/EditTextPreference;
.source "CustomEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;
    }
.end annotation


# instance fields
.field private mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/EditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/CustomEditTextPreference;Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->setFragment(Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V

    return-void
.end method

.method private setFragment(Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    return-void
.end method


# virtual methods
.method public getDialog()Landroid/app/Dialog;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getEditText()Landroid/widget/EditText;
    .locals 2

    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/CustomEditTextPreference;->mFragment:Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;

    invoke-virtual {v0}, Lcom/android/settingslib/CustomEditTextPreference$CustomPreferenceDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    const v1, 0x1020003

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    return-object v1

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isDialogOpen()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settingslib/CustomEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2
    .annotation build Landroid/support/annotation/CallSuper;
    .end annotation

    const v0, 0x1020003

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    if-eqz v0, :cond_0

    const/16 v1, 0x4001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setInputType(I)V

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    :cond_0
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 0

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    return-void
.end method
