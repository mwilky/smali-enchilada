.class public Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;
.super Landroid/app/DialogFragment;
.source "UninstallAlertDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Landroid/app/DialogFragment;-><init>()V

    return-void
.end method

.method private isSingleUser(Landroid/os/UserManager;)Z
    .locals 3
    .param p1, "userManager"    # Landroid/os/UserManager;

    .line 113
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 114
    .local v0, "userCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 115
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 114
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .line 93
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->startUninstallProgress()V

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->dispatchAborted()V

    .line 98
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 38
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 39
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 40
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getDialogInfo()Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    move-result-object v1

    .line 41
    .local v1, "dialogInfo":Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
    iget-object v2, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 42
    .local v2, "appLabel":Ljava/lang/CharSequence;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 43
    .local v3, "dialogBuilder":Landroid/app/AlertDialog$Builder;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .local v4, "messageBuilder":Ljava/lang/StringBuilder;
    iget-object v5, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    .line 48
    iget-object v5, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v5, v0}, Landroid/content/pm/ActivityInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 49
    .local v5, "activityLabel":Ljava/lang/CharSequence;
    invoke-virtual {v5, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 50
    const v8, 0x7f121209

    new-array v9, v7, [Ljava/lang/Object;

    aput-object v5, v9, v6

    .line 51
    invoke-virtual {p0, v8, v9}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 50
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    const-string v8, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v8, ".\n\n"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .end local v5    # "activityLabel":Ljava/lang/CharSequence;
    :cond_0
    iget-object v5, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v5, v5, 0x80

    if-eqz v5, :cond_1

    move v5, v7

    goto :goto_0

    :cond_1
    move v5, v6

    .line 58
    .local v5, "isUpdate":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-static {v8}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v8

    .line 59
    .local v8, "userManager":Landroid/os/UserManager;
    if-eqz v5, :cond_3

    .line 60
    invoke-direct {p0, v8}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 61
    const v6, 0x7f12121c

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_2

    .line 63
    :cond_2
    const v6, 0x7f12121d

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 66
    :cond_3
    iget-boolean v9, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    const v10, 0x7f120cdb

    if-eqz v9, :cond_4

    invoke-direct {p0, v8}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 67
    invoke-virtual {p0, v10}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 68
    :cond_4
    iget-object v9, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 69
    iget-object v9, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v9}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v9

    .line 71
    .local v9, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v11, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    iget-object v11, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v11}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const/16 v12, 0x3e7

    if-ne v11, v12, :cond_5

    .line 72
    new-array v11, v7, [Ljava/lang/Object;

    aput-object v2, v11, v6

    .line 73
    invoke-virtual {p0, v10, v11}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 72
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    const v10, 0x7f120cdc

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v2, v7, v6

    invoke-virtual {p0, v10, v7}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 76
    :cond_5
    const v10, 0x7f12120e

    new-array v7, v7, [Ljava/lang/Object;

    iget-object v11, v9, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v11, v7, v6

    .line 77
    invoke-virtual {p0, v10, v7}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 76
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .end local v9    # "userInfo":Landroid/content/pm/UserInfo;
    :goto_1
    goto :goto_2

    .line 80
    :cond_6
    const v6, 0x7f120cdd

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    :goto_2
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 85
    const v6, 0x104000a

    invoke-virtual {v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    const/high16 v6, 0x1040000

    invoke-virtual {v3, v6, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 88
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    return-object v6
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .line 102
    invoke-super {p0, p1}, Landroid/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 106
    :cond_0
    return-void
.end method
