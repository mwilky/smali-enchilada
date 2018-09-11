.class public Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;
.super Landroid/support/v17/leanback/app/GuidedStepFragment;
.source "UninstallAlertFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/support/v17/leanback/app/GuidedStepFragment;-><init>()V

    return-void
.end method

.method private isSingleUser(Landroid/os/UserManager;)Z
    .locals 3
    .param p1, "userManager"    # Landroid/os/UserManager;

    .line 117
    invoke-virtual {p1}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    .line 118
    .local v0, "userCount":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 119
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    .line 118
    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public onCreateActions(Ljava/util/List;Landroid/os/Bundle;)V
    .locals 3
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v17/leanback/widget/GuidedAction;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 90
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v17/leanback/widget/GuidedAction;>;"
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    .line 91
    const-wide/16 v1, -0x4

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;->clickAction(J)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction$Builder;

    .line 92
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;->build()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 90
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    new-instance v0, Landroid/support/v17/leanback/widget/GuidedAction$Builder;

    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;-><init>(Landroid/content/Context;)V

    .line 94
    const-wide/16 v1, -0x5

    invoke-virtual {v0, v1, v2}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;->clickAction(J)Landroid/support/v17/leanback/widget/GuidedAction$BuilderBase;

    move-result-object v0

    check-cast v0, Landroid/support/v17/leanback/widget/GuidedAction$Builder;

    .line 95
    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/GuidedAction$Builder;->build()Landroid/support/v17/leanback/widget/GuidedAction;

    move-result-object v0

    .line 93
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public onCreateGuidance(Landroid/os/Bundle;)Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 42
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 43
    .local v0, "pm":Landroid/content/pm/PackageManager;
    nop

    .line 44
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->getDialogInfo()Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;

    move-result-object v1

    .line 45
    .local v1, "dialogInfo":Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;
    iget-object v2, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 47
    .local v2, "appLabel":Ljava/lang/CharSequence;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .local v3, "messageBuilder":Ljava/lang/StringBuilder;
    iget-object v4, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_0

    .line 52
    iget-object v4, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v4, v0}, Landroid/content/pm/ActivityInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 53
    .local v4, "activityLabel":Ljava/lang/CharSequence;
    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 54
    const v7, 0x7f121205

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v4, v8, v5

    .line 55
    invoke-virtual {p0, v7, v8}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 54
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string v7, " "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v7, ".\n\n"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .end local v4    # "activityLabel":Ljava/lang/CharSequence;
    :cond_0
    iget-object v4, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v4, v4, 0x80

    if-eqz v4, :cond_1

    move v4, v6

    goto :goto_0

    :cond_1
    move v4, v5

    .line 62
    .local v4, "isUpdate":Z
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-static {v7}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v7

    .line 63
    .local v7, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_3

    .line 64
    invoke-direct {p0, v7}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 65
    const v5, 0x7f121218

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 67
    :cond_2
    const v5, 0x7f121219

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 70
    :cond_3
    iget-boolean v8, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->allUsers:Z

    if-eqz v8, :cond_4

    invoke-direct {p0, v7}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->isSingleUser(Landroid/os/UserManager;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 71
    const v5, 0x7f121209

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 72
    :cond_4
    iget-object v8, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 73
    iget-object v8, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v8

    .line 74
    .local v8, "userInfo":Landroid/content/pm/UserInfo;
    const v9, 0x7f12120a

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v10, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v10, v6, v5

    .line 75
    invoke-virtual {p0, v9, v6}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 74
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .end local v8    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_1

    .line 77
    :cond_5
    const v5, 0x7f121208

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    :goto_1
    new-instance v5, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;

    .line 82
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    iget-object v10, v1, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity$DialogInfo;->appInfo:Landroid/content/pm/ApplicationInfo;

    .line 85
    invoke-virtual {v10, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-direct {v5, v6, v8, v9, v10}, Landroid/support/v17/leanback/widget/GuidanceStylist$Guidance;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 81
    return-object v5
.end method

.method public onGuidedActionClicked(Landroid/support/v17/leanback/widget/GuidedAction;)V
    .locals 4
    .param p1, "action"    # Landroid/support/v17/leanback/widget/GuidedAction;

    .line 100
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {p1}, Landroid/support/v17/leanback/widget/GuidedAction;->getId()J

    move-result-wide v0

    const-wide/16 v2, -0x4

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->startUninstallProgress()V

    .line 103
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 105
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;

    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallerActivity;->dispatchAborted()V

    .line 106
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 107
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAlertFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 110
    :cond_1
    :goto_0
    return-void
.end method

.method public onProvideTheme()I
    .locals 1

    .line 37
    const v0, 0x7f130426

    return v0
.end method
