.class public Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPasswordFragment"
.end annotation


# static fields
.field private static final FRAGMENT_TAG_CHECK_LOCK_RESULT:Ljava/lang/String; = "check_lock_result"


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private mIsAlpha:Z

.field private mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPattenString:Ljava/lang/String;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mUsingFingerprint:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/widget/ImeAwareEditText;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    return-object v0
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v1, 0x0

    new-array v1, v1, [Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/view/View;

    return-object v1
.end method

.method private getDefaultDetails()I
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFrp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120897

    goto :goto_0

    :cond_0
    const v0, 0x7f1208a1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isStrongAuthRequired()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    shl-int/lit8 v2, v0, 0x2

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    add-int/2addr v2, v3

    invoke-static {}, Lcom/android/settings/password/ConfirmLockPassword;->access$000()[I

    move-result-object v3

    aget v3, v3, v2

    return v3
.end method

.method private getDefaultHeader()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFrp:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12089b

    goto :goto_0

    :cond_0
    const v0, 0x7f1208a5

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_2

    const v0, 0x7f12089a

    goto :goto_1

    :cond_2
    const v0, 0x7f1208a4

    :goto_1
    return v0
.end method

.method private getErrorMessage()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1208a9

    goto :goto_0

    :cond_0
    const v0, 0x7f1208aa

    :goto_0
    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 7

    new-instance v6, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    invoke-virtual {v6}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    return-void
.end method

.method private handleNext()V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "has_challenge"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {p0, v0, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    iget v5, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v2, v3, v2, v5}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void

    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    return-void

    :cond_4
    :goto_0
    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    return v0
.end method

.method public static synthetic lambda$Myp25CGN_sn9Gs6wDwuZ61aKfg8(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    return-void
.end method

.method static synthetic lambda$startDisappearAnimation$0(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/Intent;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    const v0, 0x7f01000d

    const v1, 0x7f01000e

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword;->overridePendingTransition(II)V

    return-void
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;IIZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-eqz p1, :cond_1

    if-eqz p5, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->reportSuccessfulAttempt()V

    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->checkForPendingIntent()V

    goto :goto_1

    :cond_1
    if-lez p3, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->refreshLockScreen()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getErrorMessage()I

    move-result v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    :goto_0
    if-eqz p5, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->reportFailedAttempt()V

    :cond_3
    :goto_1
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPattenString:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPassword;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPassword;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hwD4uLqRx_u_wyU3V7MV_afxC5o;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hwD4uLqRx_u_wyU3V7MV_afxC5o;-><init>(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_2
    const-string v1, "power_on_psw"

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPattenString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "challenge"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iget v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    iget v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserId:I

    new-instance v10, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    move-object/from16 v14, p2

    invoke-direct {v10, v0, v14, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V

    if-ne v3, v4, :cond_0

    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v6, p1

    move-wide v7, v1

    move v9, v4

    invoke-static/range {v5 .. v10}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v11, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const/4 v13, 0x0

    move-object/from16 v12, p1

    move-wide v14, v1

    move/from16 v16, v4

    move-object/from16 v17, v10

    invoke-static/range {v11 .. v17}, Lcom/android/internal/widget/LockPatternChecker;->verifyTiedProfileChallenge(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ZJILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v5

    :goto_0
    iput-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-void
.end method

.method private updatePasswordEntry()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    goto :goto_4

    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v3}, Lcom/android/settings/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :goto_4
    return-void
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    return-void
.end method

.method protected getLastTryErrorMessage(I)I
    .locals 3

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized user type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120861

    goto :goto_0

    :cond_0
    const v0, 0x7f120867

    :goto_0
    return v0

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120860

    goto :goto_1

    :cond_1
    const v0, 0x7f120866

    :goto_1
    return v0

    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_2

    const v0, 0x7f12085f

    goto :goto_2

    :cond_2
    const v0, 0x7f120865

    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00d6

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0338

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/ConfirmLockPassword;

    nop

    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmLockPassword;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v3

    sget-object v4, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v3, v4, :cond_0

    const v3, 0x7f0d0059

    goto :goto_0

    :cond_0
    const v3, 0x7f0d0057

    :goto_0
    const/4 v4, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual {v5, v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const v7, 0x7f0a03d7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v7}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    new-instance v7, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const v7, 0x7f0a0222

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    const v7, 0x7f0a0513

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    :cond_1
    const v7, 0x7f0a0172

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    const v7, 0x7f0a01bc

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const/high16 v7, 0x40000

    if-eq v7, v1, :cond_3

    const/high16 v7, 0x50000

    if-eq v7, v1, :cond_3

    const/high16 v7, 0x60000

    if-eq v7, v1, :cond_3

    const/high16 v7, 0x80000

    if-ne v7, v1, :cond_2

    goto :goto_1

    :cond_2
    move v7, v4

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v7, 0x1

    :goto_2
    iput-boolean v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    if-eqz v7, :cond_6

    const-string v8, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    const-string v9, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    :cond_5
    iget-object v10, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v10, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_6
    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v8}, Lcom/android/settings/widget/ImeAwareEditText;->getInputType()I

    move-result v8

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    iget-boolean v10, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v10, :cond_7

    move v10, v8

    goto :goto_3

    :cond_7
    const/16 v10, 0x12

    :goto_3
    invoke-virtual {v9, v10}, Lcom/android/settings/widget/ImeAwareEditText;->setInputType(I)V

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1040157

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/settings/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const-wide/16 v12, 0xdc

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c000e

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    new-instance v4, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const-wide/16 v19, 0x6e

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f000000    # 0.5f

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c000f

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v9, "check_lock_result"

    invoke-virtual {v4, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v4, :cond_8

    new-instance v4, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v4}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const-string v10, "check_lock_result"

    invoke-virtual {v4, v9, v10}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    :cond_8
    return-object v3
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    const/4 v0, 0x1

    return v0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updateErrorMessage(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    return-void
.end method

.method protected onShowError()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    new-instance v1, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;

    invoke-direct {v1, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    return-void
.end method
