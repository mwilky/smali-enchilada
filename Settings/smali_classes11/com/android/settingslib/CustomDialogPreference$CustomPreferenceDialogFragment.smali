.class public Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
.super Landroid/support/v14/preference/PreferenceDialogFragment;
.source "CustomDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/CustomDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CustomPreferenceDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/support/v14/preference/PreferenceDialogFragment;-><init>()V

    return-void
.end method

.method private getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/CustomDialogPreference;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;
    .locals 3

    new-instance v0, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onBindDialogView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindDialogView(Landroid/view/View;)V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v14/preference/PreferenceDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/CustomDialogPreference;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/CustomDialogPreference;->access$100(Lcom/android/settingslib/CustomDialogPreference;)Landroid/content/DialogInterface$OnShowListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    return-object v0
.end method

.method public onDialogClosed(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onDialogClosed(Z)V

    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v14/preference/PreferenceDialogFragment;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/settingslib/CustomDialogPreference;->access$000(Lcom/android/settingslib/CustomDialogPreference;Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;)V

    invoke-direct {p0}, Lcom/android/settingslib/CustomDialogPreference$CustomPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settingslib/CustomDialogPreference;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/settingslib/CustomDialogPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method
