.class public Lcom/android/settings/core/SubSettingLauncher;
.super Ljava/lang/Object;
.source "SubSettingLauncher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

.field private mLaunched:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_0

    .line 42
    iput-object p1, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    .line 43
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    invoke-direct {v0}, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;-><init>()V

    iput-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    .line 44
    return-void

    .line 40
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Context must be non-null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private launchForResult(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "listener"    # Landroid/app/Fragment;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    .line 173
    invoke-virtual {p1, p2, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 174
    return-void
.end method


# virtual methods
.method public addFlags(I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 2
    .param p1, "flags"    # I

    .line 89
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->flags:I

    or-int/2addr v1, p1

    iput v1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->flags:I

    .line 90
    return-object p0
.end method

.method public launch()V
    .locals 6

    .line 99
    iget-boolean v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunched:Z

    if-nez v0, :cond_5

    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunched:Z

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v1

    .line 107
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    .line 108
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v2, v4, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v3

    .line 109
    .local v2, "launchAsUser":Z
    :goto_0
    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move v0, v3

    .line 110
    .local v0, "launchForResult":Z
    :goto_1
    if-eqz v2, :cond_2

    if-eqz v0, :cond_2

    .line 111
    iget-object v3, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v3, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    iget-object v5, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v5, v5, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    invoke-virtual {p0, v1, v3, v4, v5}, Lcom/android/settings/core/SubSettingLauncher;->launchForResultAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Fragment;I)V

    goto :goto_2

    .line 113
    :cond_2
    if-eqz v2, :cond_3

    if-nez v0, :cond_3

    .line 114
    iget-object v3, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v3, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->launchAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 115
    :cond_3
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    .line 116
    iget-object v3, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v3, v3, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    iget-object v4, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v4, v4, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    invoke-direct {p0, v3, v1, v4}, Lcom/android/settings/core/SubSettingLauncher;->launchForResult(Landroid/app/Fragment;Landroid/content/Intent;I)V

    goto :goto_2

    .line 118
    :cond_4
    invoke-virtual {p0, v1}, Lcom/android/settings/core/SubSettingLauncher;->launch(Landroid/content/Intent;)V

    .line 120
    :goto_2
    return-void

    .line 100
    .end local v0    # "launchForResult":Z
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "launchAsUser":Z
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This launcher has already been executed. Do not reuse"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method launch(Landroid/content/Intent;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 157
    return-void
.end method

.method public launch(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 124
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 126
    return-void
.end method

.method launchAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 161
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 162
    const v0, 0x8000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 163
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 164
    return-void
.end method

.method launchForResultAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .param p3, "resultListener"    # Landroid/app/Fragment;
    .param p4, "requestCode"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 169
    invoke-virtual {p3}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1, p4, p2}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/UserHandle;)V

    .line 170
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "arguments"    # Landroid/os/Bundle;

    .line 73
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->arguments:Landroid/os/Bundle;

    .line 74
    return-object p0
.end method

.method public setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    .line 48
    return-object p0
.end method

.method public setIsShortCut(Z)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "isShortCut"    # Z

    .line 68
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-boolean p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->isShortCut:Z

    .line 69
    return-object p0
.end method

.method public setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "listener"    # Landroid/app/Fragment;
    .param p2, "resultRequestCode"    # I

    .line 83
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mRequestCode:I

    .line 84
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->mResultListener:Landroid/app/Fragment;

    .line 85
    return-object p0
.end method

.method public setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "sourceMetricsCategory"    # I

    .line 78
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->sourceMetricsCategory:I

    .line 79
    return-object p0
.end method

.method public setTitle(I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "titleResId"    # I

    .line 52
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    return-object v0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .line 63
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->title:Ljava/lang/CharSequence;

    .line 64
    return-object p0
.end method

.method public setTitle(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;
    .locals 2
    .param p1, "titlePackageName"    # Ljava/lang/String;
    .param p2, "titleResId"    # I

    .line 56
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResPackageName:Ljava/lang/String;

    .line 57
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput p2, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResId:I

    .line 58
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->title:Ljava/lang/CharSequence;

    .line 59
    return-object p0
.end method

.method public setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;
    .locals 1
    .param p1, "userHandle"    # Landroid/os/UserHandle;

    .line 94
    iget-object v0, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iput-object p1, v0, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->userHandle:Landroid/os/UserHandle;

    .line 95
    return-object p0
.end method

.method public toIntent()Landroid/content/Intent;
    .locals 3

    .line 129
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 130
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 134
    const-string v1, ":settings:show_fragment"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->destinationName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->sourceMetricsCategory:I

    if-ltz v1, :cond_0

    .line 139
    const-string v1, ":settings:source_metrics"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->sourceMetricsCategory:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 142
    const-string v1, ":settings:show_fragment_args"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->arguments:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 143
    const-string v1, ":settings:show_fragment_title_res_package_name"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    const-string v1, ":settings:show_fragment_title_resid"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->titleResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 147
    const-string v1, ":settings:show_fragment_title"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-object v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->title:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 148
    const-string v1, ":settings:show_fragment_as_shortcut"

    iget-object v2, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget-boolean v2, v2, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->isShortCut:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 150
    iget-object v1, p0, Lcom/android/settings/core/SubSettingLauncher;->mLaunchRequest:Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;

    iget v1, v1, Lcom/android/settings/core/SubSettingLauncher$LaunchRequest;->flags:I

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 151
    return-object v0

    .line 137
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Source metrics category must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 132
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Destination fragment must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
