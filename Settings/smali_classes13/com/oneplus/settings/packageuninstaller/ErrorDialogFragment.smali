.class public Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;
.super Landroid/app/DialogFragment;
.source "ErrorDialogFragment.java"


# static fields
.field public static final TEXT:Ljava/lang/String; = "com.android.packageinstaller.arg.text"

.field public static final TITLE:Ljava/lang/String; = "com.android.packageinstaller.arg.title"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.packageinstaller.arg.text"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.packageinstaller.arg.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "com.android.packageinstaller.arg.title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->dispatchAborted()V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/ErrorDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
