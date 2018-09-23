.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AutofillPickerConfirmationDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->access$000(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V

    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
