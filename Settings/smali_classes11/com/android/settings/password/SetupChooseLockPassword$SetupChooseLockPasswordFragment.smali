.class public Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;
.super Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.source "SetupChooseLockPassword.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPasswordFragment"
.end annotation


# instance fields
.field private mOptionsButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 157
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 160
    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a046a

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a04be

    if-eq v0, v1, :cond_0

    .line 149
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    .line 143
    :cond_0
    nop

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:frp_supported"

    const/4 v2, 0x0

    .line 145
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 143
    invoke-static {v0}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v0

    .line 146
    .local v0, "dialog":Lcom/android/settings/password/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 147
    goto :goto_0

    .line 139
    .end local v0    # "dialog":Lcom/android/settings/password/SetupSkipDialog;
    :cond_1
    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object v0

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 141
    nop

    .line 151
    :goto_0
    return-void
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 2
    .param p1, "lock"    # Lcom/android/settings/password/ScreenLockType;

    .line 165
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_0

    .line 166
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    .line 167
    .local v0, "currentLockType":Lcom/android/settings/password/ScreenLockType;
    :goto_0
    if-ne p1, v0, :cond_1

    .line 168
    return-void

    .line 170
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    .line 171
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 107
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 109
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Lcom/android/settings/password/ChooseLockGenericController;

    iget v2, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v1, v0, v2}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    .line 111
    .local v1, "chooseLockGenericController":Lcom/android/settings/password/ChooseLockGenericController;
    const/4 v2, 0x0

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleScreenLockTypes(IZ)Ljava/util/List;

    move-result-object v3

    .line 112
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 113
    .local v3, "anyOptionsShown":Z
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "show_options_button"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    .line 115
    .local v4, "showOptionsButton":Z
    if-nez v3, :cond_1

    .line 116
    const-string v5, "SetupChooseLockPassword"

    const-string v6, "Visible screen lock types is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    .line 120
    const v5, 0x7f0a046a

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    .line 121
    iget-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    :cond_2
    const v2, 0x7f0a0312

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 125
    .local v2, "message":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    :cond_3
    iget-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_4

    .line 130
    iget-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0602b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    .line 133
    :cond_4
    return-void
.end method

.method protected updateUi()V
    .locals 5

    .line 175
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mSkipButton:Landroid/widget/Button;

    iget-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mForFingerprint:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 179
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    .line 180
    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v4, :cond_1

    goto :goto_1

    .line 179
    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 182
    :cond_2
    return-void
.end method
