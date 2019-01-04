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

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a049e

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a04f5

    if-eq v0, v1, :cond_0

    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onClick(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:frp_supported"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    nop

    :goto_0
    return-void
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    :goto_0
    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/ChooseLockGenericController;

    iget v2, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUserId:I

    invoke-direct {v1, v0, v2}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    const/4 v2, 0x0

    const/high16 v3, 0x10000

    invoke-virtual {v1, v3, v2}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleScreenLockTypes(IZ)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "show_options_button"

    invoke-virtual {v4, v5, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v3, :cond_1

    const-string v5, "SetupChooseLockPassword"

    const-string v6, "Visible screen lock types is empty!"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v4, :cond_2

    if-eqz v3, :cond_2

    const v5, 0x7f0a049e

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iput-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {v5, v2}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v2, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    const v2, 0x7f0a0336

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0602b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    iget-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0602b4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTextColor(I)V

    :cond_4
    return-void
.end method

.method protected updateUi()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

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

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mOptionsButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPassword$SetupChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v4, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v1, v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method
