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

    .line 115
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 107
    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 117
    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .line 93
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 93
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 93
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 93
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/widget/ImeAwareEditText;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;

    .line 93
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    return-object v0
.end method

.method private getActiveViews()[Landroid/view/View;
    .locals 2

    .line 252
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 253
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 254
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 261
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
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

    .line 206
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFrp:Z

    if-eqz v0, :cond_1

    .line 207
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120897

    goto :goto_0

    .line 208
    :cond_0
    const v0, 0x7f1208a1

    .line 207
    :goto_0
    return v0

    .line 210
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isStrongAuthRequired()Z

    move-result v0

    .line 211
    .local v0, "isStrongAuthRequired":Z
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    .line 213
    .local v1, "isProfile":Z
    shl-int/lit8 v2, v0, 0x2

    shl-int/lit8 v3, v1, 0x1

    add-int/2addr v2, v3

    .line 214
    iget-boolean v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    add-int/2addr v2, v3

    .line 215
    .local v2, "index":I
    invoke-static {}, Lcom/android/settings/password/ConfirmLockPassword;->access$000()[I

    move-result-object v3

    aget v3, v3, v2

    return v3
.end method

.method private getDefaultHeader()I
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFrp:Z

    if-eqz v0, :cond_1

    .line 198
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f12089b

    goto :goto_0

    .line 199
    :cond_0
    const v0, 0x7f1208a5

    .line 198
    :goto_0
    return v0

    .line 201
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_2

    const v0, 0x7f12089a

    goto :goto_1

    .line 202
    :cond_2
    const v0, 0x7f1208a4

    .line 201
    :goto_1
    return v0
.end method

.method private getErrorMessage()I
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1208a9

    goto :goto_0

    .line 220
    :cond_0
    const v0, 0x7f1208aa

    .line 219
    :goto_0
    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 7
    .param p1, "elapsedRealtimeDeadline"    # J

    .line 486
    new-instance v6, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;

    .line 487
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, p1, v0

    const-wide/16 v4, 0x3e8

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;JJ)V

    .line 508
    invoke-virtual {v6}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$3;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 509
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    .line 510
    return-void
.end method

.method private handleNext()V
    .locals 6

    .line 334
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 338
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 339
    .local v0, "pin":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 340
    return-void

    .line 343
    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 344
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "has_challenge"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 347
    .local v1, "verifyChallenge":Z
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 348
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v1, :cond_3

    .line 349
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->isInternalActivity()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 350
    invoke-direct {p0, v0, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V

    .line 351
    return-void

    .line 358
    :cond_2
    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    iget v5, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v4, v2, v3, v2, v5}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 359
    return-void

    .line 354
    :cond_3
    invoke-direct {p0, v0, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V

    .line 355
    return-void

    .line 335
    .end local v0    # "pin":Ljava/lang/String;
    .end local v1    # "verifyChallenge":Z
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_4
    :goto_0
    return-void
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 362
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
    .param p0, "activity"    # Lcom/android/settings/password/ConfirmLockPassword;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 435
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    .line 437
    const v0, 0x7f01000d

    const v1, 0x7f01000e

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword;->overridePendingTransition(II)V

    .line 440
    return-void
.end method

.method private onPasswordChecked(ZLandroid/content/Intent;IIZ)V
    .locals 3
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .line 452
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 453
    if-eqz p1, :cond_1

    .line 454
    if-eqz p5, :cond_0

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->reportSuccessfulAttempt()V

    .line 457
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->checkForPendingIntent()V

    goto :goto_1

    .line 460
    :cond_1
    if-lez p3, :cond_2

    .line 461
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->refreshLockScreen()V

    .line 462
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 464
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    .line 465
    .end local v0    # "deadline":J
    goto :goto_0

    .line 466
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getErrorMessage()I

    move-result v0

    const-wide/16 v1, 0xbb8

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->showError(IJ)V

    .line 468
    :goto_0
    if-eqz p5, :cond_3

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->reportFailedAttempt()V

    .line 472
    :cond_3
    :goto_1
    return-void
.end method

.method private startCheckPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 397
    iget v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 399
    .local v0, "localEffectiveUserId":I
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPattenString:Ljava/lang/String;

    .line 401
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    new-instance v2, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;Ljava/lang/String;I)V

    invoke-static {v1, p1, v0, v2}, Lcom/android/internal/widget/LockPatternChecker;->checkPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    .line 420
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 423
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 424
    return-void

    .line 426
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearing:Z

    .line 428
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPassword;

    .line 430
    .local v0, "activity":Lcom/android/settings/password/ConfirmLockPassword;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPassword;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 433
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPassword;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v1, v2, :cond_2

    .line 434
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hwD4uLqRx_u_wyU3V7MV_afxC5o;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$hwD4uLqRx_u_wyU3V7MV_afxC5o;-><init>(Lcom/android/settings/password/ConfirmLockPassword;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 443
    :cond_2
    const-string v1, "power_on_psw"

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPattenString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 445
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ConfirmLockPassword;->setResult(ILandroid/content/Intent;)V

    .line 446
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPassword;->finish()V

    .line 448
    :goto_0
    return-void

    .line 431
    :cond_3
    :goto_1
    return-void
.end method

.method private startVerifyPassword(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 18
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    move-object/from16 v0, p0

    .line 366
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "challenge"

    const-wide/16 v3, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 368
    .local v1, "challenge":J
    iget v3, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 369
    .local v3, "localEffectiveUserId":I
    iget v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserId:I

    .line 370
    .local v4, "localUserId":I
    new-instance v10, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;

    move-object/from16 v14, p2

    invoke-direct {v10, v0, v14, v3}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;Landroid/content/Intent;I)V

    .line 388
    .local v10, "onVerifyCallback":Lcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;
    if-ne v3, v4, :cond_0

    .line 389
    iget-object v5, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v6, p1

    move-wide v7, v1

    move v9, v4

    invoke-static/range {v5 .. v10}, Lcom/android/internal/widget/LockPatternChecker;->verifyPassword(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JILcom/android/internal/widget/LockPatternChecker$OnVerifyCallback;)Landroid/os/AsyncTask;

    move-result-object v5

    goto :goto_0

    .line 391
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

    .line 394
    return-void
.end method

.method private updatePasswordEntry()V
    .locals 5

    .line 314
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 315
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

    .line 316
    .local v0, "isLockedOut":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-nez v0, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 317
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 318
    if-nez v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    if-eqz v1, :cond_3

    goto :goto_3

    .line 321
    :cond_3
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    goto :goto_4

    .line 319
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v3}, Lcom/android/settings/widget/ImeAwareEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 323
    :goto_4
    return-void
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .line 305
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 306
    return-void
.end method

.method protected getLastTryErrorMessage(I)I
    .locals 3
    .param p1, "userType"    # I

    .line 225
    packed-switch p1, :pswitch_data_0

    .line 236
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

    .line 233
    :pswitch_0
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120861

    goto :goto_0

    .line 234
    :cond_0
    const v0, 0x7f120867

    .line 233
    :goto_0
    return v0

    .line 230
    :pswitch_1
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_1

    const v0, 0x7f120860

    goto :goto_1

    .line 231
    :cond_1
    const v0, 0x7f120866

    .line 230
    :goto_1
    return v0

    .line 227
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v0, :cond_2

    const v0, 0x7f12085f

    goto :goto_2

    .line 228
    :cond_2
    const v0, 0x7f120865

    .line 227
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

    .line 284
    const/16 v0, 0x1e

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a00d6

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0338

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 515
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 516
    goto :goto_0

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 520
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 523
    :goto_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 122
    iget-object v1, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 125
    .local v1, "storedQuality":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/settings/password/ConfirmLockPassword;

    .line 126
    .local v2, "activity":Lcom/android/settings/password/ConfirmLockPassword;
    nop

    .line 127
    invoke-virtual {v2}, Lcom/android/settings/password/ConfirmLockPassword;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v3

    sget-object v4, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v3, v4, :cond_0

    .line 128
    const v3, 0x7f0d0059

    goto :goto_0

    .line 129
    :cond_0
    const v3, 0x7f0d0057

    .line 126
    :goto_0
    const/4 v4, 0x0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual {v5, v3, v6, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 133
    .local v3, "view":Landroid/view/View;
    const v7, 0x7f0a03d7

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 134
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v7, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 136
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v7}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 137
    new-instance v7, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {v7, v8}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 139
    const v7, 0x7f0a0222

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 140
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    if-nez v7, :cond_1

    .line 141
    const v7, 0x7f0a0513

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 143
    :cond_1
    const v7, 0x7f0a0172

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 144
    const v7, 0x7f0a01bc

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 145
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

    .line 150
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    const-string v8, "input_method"

    invoke-virtual {v7, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/view/inputmethod/InputMethodManager;

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 154
    .local v7, "intent":Landroid/content/Intent;
    if-eqz v7, :cond_6

    .line 155
    const-string v8, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 157
    .local v8, "headerMessage":Ljava/lang/CharSequence;
    const-string v9, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v7, v9}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 159
    .local v9, "detailsMessage":Ljava/lang/CharSequence;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultHeader()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 162
    :cond_4
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 163
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getDefaultDetails()I

    move-result v10

    invoke-virtual {v0, v10}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 165
    :cond_5
    iget-object v10, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v10, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    .end local v8    # "headerMessage":Ljava/lang/CharSequence;
    .end local v9    # "detailsMessage":Ljava/lang/CharSequence;
    :cond_6
    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v8}, Lcom/android/settings/widget/ImeAwareEditText;->getInputType()I

    move-result v8

    .line 169
    .local v8, "currentType":I
    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    iget-boolean v10, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mIsAlpha:Z

    if-eqz v10, :cond_7

    move v10, v8

    goto :goto_3

    .line 170
    :cond_7
    const/16 v10, 0x12

    .line 169
    :goto_3
    invoke-virtual {v9, v10}, Lcom/android/settings/widget/ImeAwareEditText;->setInputType(I)V

    .line 172
    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 173
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const v11, 0x1040157

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 172
    invoke-static {v10, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v9, v4}, Lcom/android/settings/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 175
    new-instance v4, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v11

    const-wide/16 v12, 0xdc

    const/high16 v14, 0x40000000    # 2.0f

    const/high16 v15, 0x3f800000    # 1.0f

    .line 177
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c000e

    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v16

    move-object v10, v4

    invoke-direct/range {v10 .. v16}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 179
    new-instance v4, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v18

    const-wide/16 v19, 0x6e

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f000000    # 0.5f

    .line 182
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c000f

    .line 181
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v23

    move-object/from16 v17, v4

    invoke-direct/range {v17 .. v23}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 183
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v9, "check_lock_result"

    .line 186
    invoke-virtual {v4, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v4

    check-cast v4, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 187
    iget-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v4, :cond_8

    .line 188
    new-instance v4, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v4}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v4, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 189
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const-string v10, "check_lock_result"

    invoke-virtual {v4, v9, v10}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v4

    .line 190
    invoke-virtual {v4}, Landroid/app/FragmentTransaction;->commit()I

    .line 193
    :cond_8
    return-object v3
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .line 477
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->onPasswordChecked(ZLandroid/content/Intent;IIZ)V

    .line 478
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 528
    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 534
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 531
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleNext()V

    .line 532
    const/4 v0, 0x1

    return v0
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .line 310
    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUsingFingerprint:Z

    .line 311
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 274
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 275
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 277
    iput-object v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 279
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 280
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 289
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 290
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 291
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 292
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    .line 293
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updatePasswordEntry()V

    .line 296
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mEffectiveUserId:I

    .line 298
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v2

    .line 297
    invoke-virtual {p0, v2}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->updateErrorMessage(I)V

    .line 300
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 301
    return-void
.end method

.method protected onShowError()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 483
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .param p1, "hasFocus"    # Z

    .line 326
    if-nez p1, :cond_0

    .line 327
    return-void

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    new-instance v1, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;

    invoke-direct {v1, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->post(Ljava/lang/Runnable;)Z

    .line 331
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .line 242
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 243
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 244
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 245
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 246
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setAlpha(F)V

    .line 247
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 249
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .line 268
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;->getActiveViews()[Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;

    invoke-direct {v2, p0}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPassword$ConfirmLockPasswordFragment$Myp25CGN_sn9Gs6wDwuZ61aKfg8;-><init>(Lcom/android/settings/password/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V

    .line 270
    return-void
.end method
