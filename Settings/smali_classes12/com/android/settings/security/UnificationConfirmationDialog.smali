.class public Lcom/android/settings/security/UnificationConfirmationDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "UnificationConfirmationDialog.java"


# static fields
.field private static final EXTRA_COMPLIANT:Ljava/lang/String; = "compliant"

.field static final TAG_UNIFICATION_DIALOG:Ljava/lang/String; = "unification_dialog"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(ZLcom/android/settings/security/SecuritySettings;Landroid/content/DialogInterface;I)V
    .locals 0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->launchConfirmDeviceLockForUnification()V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->unifyUncompliantLocks()V

    :goto_0
    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/security/UnificationConfirmationDialog;
    .locals 3

    new-instance v0, Lcom/android/settings/security/UnificationConfirmationDialog;

    invoke-direct {v0}, Lcom/android/settings/security/UnificationConfirmationDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "compliant"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/android/settings/security/UnificationConfirmationDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x214

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "compliant"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12087d

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_0

    const v3, 0x7f12087b

    goto :goto_0

    :cond_0
    const v3, 0x7f12087e

    :goto_0
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    if-eqz v1, :cond_1

    const v3, 0x7f12087c

    goto :goto_1

    :cond_1
    const v3, 0x7f12087f

    :goto_1
    new-instance v4, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;

    invoke-direct {v4, v1, v0}, Lcom/android/settings/security/-$$Lambda$UnificationConfirmationDialog$-wYUc2a9Y89ehsHG44vpFDdnSk8;-><init>(ZLcom/android/settings/security/SecuritySettings;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f12038a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    return-object v2
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    invoke-virtual {p0}, Lcom/android/settings/security/UnificationConfirmationDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->updateUnificationPreference()V

    return-void
.end method

.method public show(Lcom/android/settings/security/SecuritySettings;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/settings/security/SecuritySettings;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "unification_dialog"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "unification_dialog"

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/security/UnificationConfirmationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
