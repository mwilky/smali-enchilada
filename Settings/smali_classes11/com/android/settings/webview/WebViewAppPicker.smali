.class public Lcom/android/settings/webview/WebViewAppPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "WebViewAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;
    }
.end annotation


# instance fields
.field private mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private createDefaultWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .locals 1

    .line 108
    new-instance v0, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-direct {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;-><init>()V

    return-object v0
.end method

.method private getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    if-nez v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->createDefaultWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/webview/WebViewAppPicker;->setWebViewUpdateServiceWrapper(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    return-object v0
.end method


# virtual methods
.method createDefaultAppInfo(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;)Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pm"    # Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .param p3, "packageItemInfo"    # Landroid/content/pm/PackageItemInfo;
    .param p4, "disabledReason"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 143
    new-instance v6, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;

    .line 144
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    .line 143
    return-object v6
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v0, "packageInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/android/settingslib/applications/DefaultAppInfo;>;"
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 70
    .local v1, "context":Landroid/content/Context;
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v2

    .line 71
    .local v2, "webViewUpdateService":Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    nop

    .line 72
    invoke-virtual {v2, v1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getValidWebViewApplicationInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 73
    .local v3, "pkgs":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 74
    .local v5, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v6, p0, Lcom/android/settings/webview/WebViewAppPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v2, v1, v7}, Lcom/android/settings/webview/WebViewAppPicker;->getDisabledReason(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 74
    invoke-virtual {p0, v1, v6, v5, v7}, Lcom/android/settings/webview/WebViewAppPicker;->createDefaultAppInfo(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;)Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    .end local v5    # "ai":Landroid/content/pm/ApplicationInfo;
    goto :goto_0

    .line 77
    :cond_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 82
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 83
    .local v0, "currentPackage":Landroid/content/pm/PackageInfo;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v1
.end method

.method getDisabledReason(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "webviewUpdateServiceWrapper"    # Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "packageName"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 154
    nop

    .line 155
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 156
    .local v0, "userPackages":Ljava/util/List;, "Ljava/util/List<Landroid/webkit/UserPackage;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/webkit/UserPackage;

    .line 159
    .local v2, "userPackage":Landroid/webkit/UserPackage;
    invoke-virtual {v2}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_0

    .line 160
    goto :goto_0

    .line 163
    :cond_0
    invoke-virtual {v2}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_1

    .line 165
    const v1, 0x7f121396

    new-array v3, v5, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v2}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 165
    invoke-virtual {p2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 167
    :cond_1
    invoke-virtual {v2}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v3

    if-nez v3, :cond_2

    .line 169
    const v1, 0x7f121394

    new-array v3, v5, [Ljava/lang/Object;

    .line 170
    invoke-virtual {v2}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget-object v5, v5, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 169
    invoke-virtual {p2, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 172
    .end local v2    # "userPackage":Landroid/webkit/UserPackage;
    :cond_2
    goto :goto_0

    .line 173
    :cond_3
    const/4 v1, 0x0

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 118
    const/16 v0, 0x195

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 63
    const v0, 0x7f1600da

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 56
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-nez v0, :cond_0

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 59
    :cond_0
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 4
    .param p1, "success"    # Z

    .line 93
    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 95
    .local v0, "activity":Landroid/app/Activity;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 96
    .local v1, "intent":Landroid/content/Intent;
    :goto_0
    if-eqz v1, :cond_1

    const-string v2, "android.settings.WEBVIEW_SETTINGS"

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->finish()V

    .line 101
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_1
    goto :goto_1

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->showInvalidChoiceToast(Landroid/content/Context;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->updateCandidates()V

    .line 105
    :goto_1
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 87
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->setWebViewProvider(Ljava/lang/String;)Z

    move-result v0

    .line 88
    .local v0, "success":Z
    return v0
.end method

.method setWebViewUpdateServiceWrapper(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V
    .locals 0
    .param p1, "wvusWrapper"    # Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 113
    iput-object p1, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    .line 114
    return-void
.end method
