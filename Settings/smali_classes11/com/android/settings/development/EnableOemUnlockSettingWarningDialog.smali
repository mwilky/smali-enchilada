.class public Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "EnableOemUnlockSettingWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "EnableOemUnlockDlg"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 3
    .param p0, "host"    # Landroid/app/Fragment;

    .line 37
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 38
    .local v0, "manager":Landroid/app/FragmentManager;
    const-string v1, "EnableOemUnlockDlg"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 39
    new-instance v1, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;

    invoke-direct {v1}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;-><init>()V

    .line 41
    .local v1, "dialog":Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;
    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 42
    const-string v2, "EnableOemUnlockDlg"

    invoke-virtual {v1, v0, v2}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    .end local v1    # "dialog":Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x4c4

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockDialogHost;

    .line 70
    .local v0, "host":Lcom/android/settings/development/OemUnlockDialogHost;
    if-nez v0, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 74
    invoke-interface {v0}, Lcom/android/settings/development/OemUnlockDialogHost;->onOemUnlockDialogConfirmed()V

    goto :goto_0

    .line 76
    :cond_1
    invoke-interface {v0}, Lcom/android/settings/development/OemUnlockDialogHost;->onOemUnlockDialogDismissed()V

    .line 78
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 54
    const v0, 0x7f120d40

    .line 55
    .local v0, "messageStringResId":I
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP6ModeBefore()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 56
    const v0, 0x7f12041f

    .line 58
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f120420

    .line 59
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 60
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f1205e2

    .line 61
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    .line 62
    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 58
    return-object v1
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/development/OemUnlockDialogHost;

    .line 84
    .local v0, "host":Lcom/android/settings/development/OemUnlockDialogHost;
    if-nez v0, :cond_0

    .line 85
    return-void

    .line 87
    :cond_0
    invoke-interface {v0}, Lcom/android/settings/development/OemUnlockDialogHost;->onOemUnlockDialogDismissed()V

    .line 88
    return-void
.end method
