.class public Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;
.super Landroid/app/Fragment;
.source "UninstallAppProgressFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress$ProgressFragment;


# static fields
.field private static final TAG:Ljava/lang/String; = "UninstallAppProgressF"


# instance fields
.field private mDeviceManagerButton:Landroid/widget/Button;

.field private mOkButton:Landroid/widget/Button;

.field private mUsersButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .line 82
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    .line 83
    .local v0, "activity":Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;
    iget-object v1, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    if-ne p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 84
    const-string v1, "UninstallAppProgressF"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Finished uninstalling pkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 84
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-virtual {v0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->setResultAndFinish()V

    .line 88
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 45
    const v0, 0x7f0d01cb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 47
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0a006f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 48
    .local v1, "snippetView":Landroid/view/View;
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 49
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;

    invoke-virtual {v3}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgress;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    .line 48
    invoke-static {v2, v3, v1}, Lcom/oneplus/settings/packageuninstaller/PackageUtil;->initSnippetForInstalledApp(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Landroid/view/View;)Landroid/view/View;

    .line 50
    const v2, 0x7f0a0180

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    .line 51
    const v2, 0x7f0a0597

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    .line 52
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 53
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    new-instance v4, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$1;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 65
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    new-instance v3, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment$2;-><init>(Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v2, 0x7f0a0356

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    .line 76
    iget-object v2, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mOkButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-object v0
.end method

.method public setDeviceManagerButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 97
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mDeviceManagerButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 98
    return-void
.end method

.method public setUsersButtonVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .line 92
    iget-object v0, p0, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->mUsersButton:Landroid/widget/Button;

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 93
    return-void
.end method

.method public showCompletion(Ljava/lang/CharSequence;)V
    .locals 3
    .param p1, "statusText"    # Ljava/lang/CharSequence;

    .line 102
    invoke-virtual {p0}, Lcom/oneplus/settings/packageuninstaller/UninstallAppProgressFragment;->getView()Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "root":Landroid/view/View;
    const v1, 0x7f0a041b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 104
    const v1, 0x7f0a04e3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 105
    const v1, 0x7f0a04e2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    const v1, 0x7f0a0357

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method
