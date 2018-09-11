.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.super Lcom/android/settings/SettingsActivity;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    }
.end annotation


# static fields
.field private static final STATE_IS_KEYGUARD_LOCKED:Ljava/lang/String; = "STATE_IS_KEYGUARD_LOCKED"


# instance fields
.field private mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

.field private mEnterAnimationPending:Z

.field private mFirstTimeVisible:Z

.field private mIsKeyguardLocked:Z

.field private mRestoring:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    return-void
.end method

.method private getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const v1, 0x7f0a02fa

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    .line 128
    .local v0, "fragment":Landroid/app/Fragment;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    check-cast v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    return-object v1

    .line 131
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 49
    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 55
    nop

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isInternalActivity()Z

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    .line 55
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result v0

    .line 57
    .local v0, "credentialOwnerUserId":I
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 58
    const v1, 0x7f13041b

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 59
    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->WORK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.settings.ConfirmCredentials.darkTheme"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 62
    const v1, 0x7f13041a

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 63
    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    goto :goto_0

    .line 65
    :cond_1
    const v1, 0x7f13014c

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTheme(I)V

    .line 66
    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    iput-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    .line 68
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    const/4 v4, 0x1

    if-ne v1, v3, :cond_2

    .line 73
    const v1, 0x7f0a012d

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 75
    .local v1, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 77
    .end local v1    # "layout":Landroid/widget/LinearLayout;
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v3, 0x2000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 78
    if-nez p1, :cond_3

    .line 79
    const-class v1, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v1

    goto :goto_1

    .line 80
    :cond_3
    const-string v1, "STATE_IS_KEYGUARD_LOCKED"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    .line 86
    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.settings.ConfirmCredentials.showWhenLocked"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v3, 0x80000

    invoke-virtual {v1, v3}, Landroid/view/Window;->addFlags(I)V

    .line 90
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 92
    .local v1, "msg":Ljava/lang/CharSequence;
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 97
    :cond_5
    if-eqz p1, :cond_6

    move v2, v4

    nop

    :cond_6
    iput-boolean v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    .line 98
    return-void
.end method

.method public onEnterAnimationComplete()V
    .locals 1

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onEnterAnimationComplete()V

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->startEnterAnimation()V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 141
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .line 108
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    .line 110
    const/4 v0, 0x1

    return v0

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .line 117
    invoke-super {p0}, Lcom/android/settings/SettingsActivity;->onResume()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mRestoring:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mConfirmCredentialTheme:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    sget-object v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mFirstTimeVisible:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->prepareEnterAnimation()V

    .line 122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mEnterAnimationPending:Z

    .line 124
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 103
    const-string v0, "STATE_IS_KEYGUARD_LOCKED"

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->mIsKeyguardLocked:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 145
    return-void
.end method

.method public startEnterAnimation()V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->getFragment()Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 149
    return-void
.end method
