.class public Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;
.super Landroid/app/DialogFragment;
.source "UninstallUninstalling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UninstallUninstallingFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling$UninstallUninstallingFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    check-cast v4, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;

    invoke-static {v4}, Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;->access$000(Lcom/oneplus/settings/packageuninstaller/UninstallUninstalling;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    const v4, 0x7f121257

    invoke-virtual {v2, v4, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-object v2
.end method
