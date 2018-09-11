.class public Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
.super Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;
.source "SetupChooseLockPattern.java"

# interfaces
.implements Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockPatternFragment"
.end annotation


# instance fields
.field private mOptionsButton:Landroid/widget/Button;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "btn"    # Landroid/view/View;

    .line 106
    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mUserId:I

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 106
    return-void
.end method

.method public static synthetic lambda$onCreateView$1(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .line 114
    nop

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":settings:frp_supported"

    .line 116
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 114
    invoke-static {v0}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object v0

    .line 117
    .local v0, "dialog":Lcom/android/settings/password/SetupSkipDialog;
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 118
    return-void
.end method


# virtual methods
.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 150
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->setEnabled(Landroid/content/Context;Z)V

    .line 153
    iget v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/SetupRedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 102
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    .line 103
    .local v0, "view":Landroid/view/View;
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f050011

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 104
    const v1, 0x7f0a046a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    .line 105
    iget-object v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$oe1sL-LLbUw3chjlv8P3cpGYEWs;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mForFingerprint:Z

    if-nez v1, :cond_1

    .line 111
    const v1, 0x7f0a04be

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 112
    .local v1, "skipButton":Landroid/widget/Button;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    new-instance v2, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$klleXh-HZ7yoRQxNNtN-WzAt_fY;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$SetupChooseLockPattern$SetupChooseLockPatternFragment$klleXh-HZ7yoRQxNNtN-WzAt_fY;-><init>(Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    .end local v1    # "skipButton":Landroid/widget/Button;
    :cond_1
    const v1, 0x7f0a0312

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 122
    .local v1, "message":Landroid/widget/TextView;
    if-eqz v1, :cond_2

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 125
    :cond_2
    return-object v0
.end method

.method public onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V
    .locals 1
    .param p1, "lock"    # Lcom/android/settings/password/ScreenLockType;

    .line 130
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, p1, :cond_0

    .line 131
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->startChooseLockActivity(Lcom/android/settings/password/ScreenLockType;Landroid/app/Activity;)V

    .line 134
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V
    .locals 2
    .param p1, "stage"    # Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment;->updateStage(Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;)V

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;->mOptionsButton:Landroid/widget/Button;

    .line 142
    sget-object v1, Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPattern$ChooseLockPatternFragment$Stage;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 141
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 144
    :cond_1
    return-void
.end method
