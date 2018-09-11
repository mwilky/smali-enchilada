.class public Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
.super Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.source "ConfirmLockPattern.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;
.implements Lcom/android/settings/password/CredentialCheckResultTracker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmLockPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLockPatternFragment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Ljava/lang/Object;",
        ">;",
        "Lcom/android/settings/password/CredentialCheckResultTracker$Listener;"
    }
.end annotation


# static fields
.field private static final FRAGMENT_TAG_CHECK_LOCK_RESULT:Ljava/lang/String; = "check_lock_result"


# instance fields
.field private mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field private mClearPatternRunnable:Ljava/lang/Runnable;

.field private mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

.field private mDetailsText:Ljava/lang/CharSequence;

.field private mDetailsTextView:Landroid/widget/TextView;

.field private mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field private mDisappearing:Z

.field private mHeaderText:Ljava/lang/CharSequence;

.field private mHeaderTextView:Landroid/widget/TextView;

.field private mLeftSpacerLandscape:Landroid/view/View;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mPattenString:Ljava/lang/String;

.field private mPendingLockCheck:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "***>;"
        }
    .end annotation
.end field

.field private mRightSpacerLandscape:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;-><init>()V

    .line 87
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 338
    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$2;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 400
    new-instance v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$3;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Landroid/os/AsyncTask;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Landroid/os/AsyncTask;

    .line 79
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPendingLockCheck:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 79
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)Lcom/android/settings/password/CredentialCheckResultTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;

    .line 79
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Landroid/content/Intent;
    .param p3, "x3"    # I
    .param p4, "x4"    # I
    .param p5, "x5"    # Z

    .line 79
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Ljava/lang/String;

    .line 79
    iput-object p1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPattenString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;Lcom/android/settings/password/ConfirmLockPattern$Stage;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;
    .param p1, "x1"    # Lcom/android/settings/password/ConfirmLockPattern$Stage;

    .line 79
    invoke-direct {p0, p1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    return-void
.end method

.method private getActiveViews()[[Ljava/lang/Object;
    .locals 9

    .line 257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 258
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/ArrayList<Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 260
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 261
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-static {v2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->getCellStates()[[Lcom/android/internal/widget/LockPatternView$CellState;

    move-result-object v1

    .line 264
    .local v1, "cellStates":[[Lcom/android/internal/widget/LockPatternView$CellState;
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 266
    .local v4, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move v5, v2

    .local v5, "j":I
    :goto_1
    aget-object v6, v1, v3

    array-length v6, v6

    if-ge v5, v6, :cond_1

    .line 267
    aget-object v6, v1, v3

    aget-object v6, v6, v5

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 269
    .end local v5    # "j":I
    :cond_1
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    .end local v4    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 271
    .end local v3    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 272
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-static {v4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 274
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    aget-object v4, v1, v2

    array-length v4, v4

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-class v4, Ljava/lang/Object;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    .line 275
    .local v3, "resultArr":[[Ljava/lang/Object;
    move v4, v2

    .local v4, "i":I
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_5

    .line 276
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    .line 277
    .local v5, "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    move v6, v2

    .local v6, "j":I
    :goto_3
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 278
    aget-object v7, v3, v4

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v7, v6

    .line 277
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 275
    .end local v5    # "row":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    .end local v6    # "j":I
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 281
    .end local v4    # "i":I
    :cond_5
    return-object v3
.end method

.method private getDefaultDetails()I
    .locals 3

    .line 241
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFrp:Z

    if-eqz v0, :cond_0

    .line 242
    const v0, 0x7f12089c

    return v0

    .line 244
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->isStrongAuthRequired()Z

    move-result v0

    .line 245
    .local v0, "isStrongAuthRequired":Z
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    if-eqz v0, :cond_1

    .line 247
    const v1, 0x7f1208bf

    goto :goto_0

    .line 248
    :cond_1
    const v1, 0x7f12089e

    .line 246
    :goto_0
    return v1

    .line 250
    :cond_2
    if-eqz v0, :cond_3

    .line 251
    const v1, 0x7f1208bc

    goto :goto_1

    .line 252
    :cond_3
    const v1, 0x7f12089d

    .line 250
    :goto_1
    return v1
.end method

.method private getDefaultHeader()I
    .locals 1

    .line 334
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFrp:Z

    if-eqz v0, :cond_0

    const v0, 0x7f1208a0

    goto :goto_0

    .line 335
    :cond_0
    const v0, 0x7f12089f

    .line 334
    :goto_0
    return v0
.end method

.method private handleAttemptLockout(J)V
    .locals 9
    .param p1, "elapsedRealtimeDeadline"    # J

    .line 553
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->LockedOut:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 554
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 555
    .local v0, "elapsedRealtime":J
    new-instance v8, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;

    sub-long v4, p1, v0

    const-wide/16 v6, 0x3e8

    move-object v2, v8

    move-object v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;JJ)V

    .line 571
    invoke-virtual {v8}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$4;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    .line 572
    return-void
.end method

.method static synthetic lambda$startDisappearAnimation$0(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V
    .locals 2
    .param p0, "activity"    # Lcom/android/settings/password/ConfirmLockPattern;
    .param p1, "intent"    # Landroid/content/Intent;

    .line 371
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ConfirmLockPattern;->setResult(ILandroid/content/Intent;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern;->finish()V

    .line 373
    const v0, 0x7f01000d

    const v1, 0x7f01000e

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern;->overridePendingTransition(II)V

    .line 376
    return-void
.end method

.method private onPatternChecked(ZLandroid/content/Intent;IIZ)V
    .locals 2
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .line 509
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 510
    if-eqz p1, :cond_1

    .line 511
    if-eqz p5, :cond_0

    .line 512
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->reportSuccessfulAttempt()V

    .line 514
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->startDisappearAnimation(Landroid/content/Intent;)V

    .line 515
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->checkForPendingIntent()V

    goto :goto_1

    .line 517
    :cond_1
    if-lez p3, :cond_2

    .line 518
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->refreshLockScreen()V

    .line 519
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p4, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    .line 521
    .local v0, "deadline":J
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    .line 522
    .end local v0    # "deadline":J
    goto :goto_0

    .line 523
    :cond_2
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlockWrong:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 524
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->postClearPatternRunnable()V

    .line 526
    :goto_0
    if-eqz p5, :cond_3

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->reportFailedAttempt()V

    .line 530
    :cond_3
    :goto_1
    return-void
.end method

.method private postClearPatternRunnable()V
    .locals 4

    .line 347
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 348
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 349
    return-void
.end method

.method private startDisappearAnimation(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 357
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    if-eqz v0, :cond_0

    .line 358
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearing:Z

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/password/ConfirmLockPattern;

    .line 364
    .local v0, "activity":Lcom/android/settings/password/ConfirmLockPattern;
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 367
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v1

    sget-object v2, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->DARK:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v1, v2, :cond_2

    .line 368
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 369
    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v2

    new-instance v3, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$ConfirmLockPatternFragment$5mgp_p2Jjy9apKG7HsLV4Zu-sXo;

    invoke-direct {v3, v0, p1}, Lcom/android/settings/password/-$$Lambda$ConfirmLockPattern$ConfirmLockPatternFragment$5mgp_p2Jjy9apKG7HsLV4Zu-sXo;-><init>(Lcom/android/settings/password/ConfirmLockPattern;Landroid/content/Intent;)V

    invoke-virtual {v1, v2, v3, p0}, Lcom/android/settingslib/animation/DisappearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    goto :goto_0

    .line 379
    :cond_2
    const-string v1, "power_on_psw"

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mPattenString:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ConfirmLockPattern;->setResult(ILandroid/content/Intent;)V

    .line 382
    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmLockPattern;->finish()V

    .line 384
    :goto_0
    return-void

    .line 365
    :cond_3
    :goto_1
    return-void
.end method

.method private updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V
    .locals 4
    .param p1, "stage"    # Lcom/android/settings/password/ConfirmLockPattern$Stage;

    .line 292
    sget-object v0, Lcom/android/settings/password/ConfirmLockPattern$1;->$SwitchMap$com$android$settings$password$ConfirmLockPattern$Stage:[I

    invoke-virtual {p1}, Lcom/android/settings/password/ConfirmLockPattern$Stage;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 321
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 324
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    goto :goto_2

    .line 313
    :pswitch_1
    const v0, 0x7f1208c6

    const-wide/16 v2, 0xbb8

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->showError(IJ)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v2, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 319
    goto :goto_2

    .line 294
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultHeader()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 299
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 300
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 302
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getDefaultDetails()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 304
    :goto_1
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    .line 306
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    .line 305
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateErrorMessage(I)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 309
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->enableInput()V

    .line 310
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0}, Lcom/android/internal/widget/LockPatternView;->clearPattern()V

    .line 311
    nop

    .line 330
    :goto_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 331
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected authenticationSucceeded()V
    .locals 5

    .line 353
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iget v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v4, v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->setResult(ZLandroid/content/Intent;II)V

    .line 354
    return-void
.end method

.method public createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 26
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "delay"    # J
    .param p4, "duration"    # J
    .param p6, "translationY"    # F
    .param p7, "appearing"    # Z
    .param p8, "interpolator"    # Landroid/view/animation/Interpolator;
    .param p9, "finishListener"    # Ljava/lang/Runnable;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 579
    instance-of v2, v1, Lcom/android/internal/widget/LockPatternView$CellState;

    if-eqz v2, :cond_4

    .line 580
    move-object v2, v1

    check-cast v2, Lcom/android/internal/widget/LockPatternView$CellState;

    .line 581
    .local v2, "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    iget-object v12, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v14, 0x3f800000    # 1.0f

    .line 582
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz p7, :cond_0

    .line 583
    move v15, v3

    goto :goto_0

    .line 582
    :cond_0
    nop

    .line 583
    move v15, v4

    :goto_0
    if-eqz p7, :cond_1

    .line 584
    move/from16 v16, p6

    goto :goto_1

    .line 583
    :cond_1
    nop

    .line 584
    move/from16 v16, v4

    :goto_1
    if-eqz p7, :cond_2

    .line 585
    move/from16 v17, v4

    goto :goto_2

    :cond_2
    move/from16 v17, p6

    :goto_2
    if-eqz p7, :cond_3

    move/from16 v18, v4

    goto :goto_3

    :cond_3
    move/from16 v18, v3

    :goto_3
    const/high16 v19, 0x3f800000    # 1.0f

    .line 581
    move-object v13, v2

    move-wide/from16 v20, p2

    move-wide/from16 v22, p4

    move-object/from16 v24, p8

    move-object/from16 v25, p9

    invoke-virtual/range {v12 .. v25}, Lcom/android/internal/widget/LockPatternView;->startCellStateAnimation(Lcom/android/internal/widget/LockPatternView$CellState;FFFFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 587
    .end local v2    # "animatedCell":Lcom/android/internal/widget/LockPatternView$CellState;
    goto :goto_4

    .line 588
    :cond_4
    iget-object v2, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    move-object v3, v1

    check-cast v3, Landroid/view/View;

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 591
    :goto_4
    return-void
.end method

.method protected getLastTryErrorMessage(I)I
    .locals 3
    .param p1, "userType"    # I

    .line 540
    packed-switch p1, :pswitch_data_0

    .line 548
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

    .line 546
    :pswitch_0
    const v0, 0x7f120864

    return v0

    .line 544
    :pswitch_1
    const v0, 0x7f120863

    return v0

    .line 542
    :pswitch_2
    const v0, 0x7f120862

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

    .line 206
    const/16 v0, 0x1f

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 24
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    move-object/from16 v0, p0

    .line 113
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/password/ConfirmLockPattern;

    .line 114
    .local v1, "activity":Lcom/android/settings/password/ConfirmLockPattern;
    nop

    .line 115
    invoke-virtual {v1}, Lcom/android/settings/password/ConfirmLockPattern;->getConfirmCredentialTheme()Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    move-result-object v2

    sget-object v3, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;->NORMAL:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$ConfirmCredentialTheme;

    if-ne v2, v3, :cond_0

    .line 116
    const v2, 0x7f0d005c

    goto :goto_0

    .line 117
    :cond_0
    const v2, 0x7f0d005a

    :goto_0
    const/4 v3, 0x0

    .line 114
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    invoke-virtual {v4, v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 120
    .local v2, "view":Landroid/view/View;
    const v3, 0x7f0a0222

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 121
    const v3, 0x7f0a02ef

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LockPatternView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 122
    const v3, 0x7f0a0172

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    .line 123
    const v3, 0x7f0a01bc

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mErrorTextView:Landroid/widget/TextView;

    .line 124
    const v3, 0x7f0a02d7

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    .line 125
    const v3, 0x7f0a044d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    .line 129
    const v3, 0x7f0a055a

    .line 130
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;

    .line 131
    .local v3, "topLayout":Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;
    iget-object v6, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/LinearLayoutWithDefaultTouchRecepient;->setDefaultTouchRecepient(Landroid/view/View;)V

    .line 133
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    .line 134
    .local v6, "intent":Landroid/content/Intent;
    if-eqz v6, :cond_1

    .line 135
    const-string v7, "com.android.settings.ConfirmCredentials.header"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderText:Ljava/lang/CharSequence;

    .line 137
    const-string v7, "com.android.settings.ConfirmCredentials.details"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    iput-object v7, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsText:Ljava/lang/CharSequence;

    .line 141
    :cond_1
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 142
    invoke-virtual {v8}, Lcom/android/internal/widget/LockPatternUtils;->isTactileFeedbackEnabled()Z

    move-result v8

    .line 141
    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setTactileFeedbackEnabled(Z)V

    .line 143
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v8

    xor-int/lit8 v8, v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 145
    iget-object v7, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mConfirmExistingLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v7, v8}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 146
    sget-object v7, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {v0, v7}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 148
    if-nez p3, :cond_2

    .line 158
    iget-boolean v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFrp:Z

    if-nez v8, :cond_2

    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 159
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const/4 v9, -0x1

    invoke-virtual {v8, v9}, Landroid/app/Activity;->setResult(I)V

    .line 160
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Activity;->finish()V

    .line 163
    :cond_2
    new-instance v8, Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v10

    const-wide/16 v11, 0xdc

    const/high16 v13, 0x40000000    # 2.0f

    const v14, 0x3fa66666    # 1.3f

    .line 166
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v15, 0x10c000e

    .line 165
    invoke-static {v9, v15}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v15

    move-object v9, v8

    invoke-direct/range {v9 .. v15}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 167
    new-instance v8, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v17

    const-wide/16 v18, 0x7d

    const/high16 v20, 0x40800000    # 4.0f

    const v21, 0x3e99999a    # 0.3f

    .line 170
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x10c000f

    .line 169
    invoke-static {v9, v10}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v22

    new-instance v9, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;

    invoke-direct {v9, v0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment$1;-><init>(Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    move-object/from16 v16, v8

    move-object/from16 v23, v9

    invoke-direct/range {v16 .. v23}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;)V

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 177
    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v0, v8}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->setAccessibilityTitle(Ljava/lang/CharSequence;)V

    .line 179
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    const-string v9, "check_lock_result"

    .line 180
    invoke-virtual {v8, v9}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v8

    check-cast v8, Lcom/android/settings/password/CredentialCheckResultTracker;

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 181
    iget-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    if-nez v8, :cond_3

    .line 182
    new-instance v8, Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-direct {v8}, Lcom/android/settings/password/CredentialCheckResultTracker;-><init>()V

    iput-object v8, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    .line 183
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v8

    iget-object v9, v0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const-string v10, "check_lock_result"

    invoke-virtual {v8, v9, v10}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v8

    .line 184
    invoke-virtual {v8}, Landroid/app/FragmentTransaction;->commit()I

    .line 186
    :cond_3
    return-object v2
.end method

.method public onCredentialChecked(ZLandroid/content/Intent;IIZ)V
    .locals 0
    .param p1, "matched"    # Z
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "timeoutMs"    # I
    .param p4, "effectiveUserId"    # I
    .param p5, "newResult"    # Z

    .line 535
    invoke-direct/range {p0 .. p5}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->onPatternChecked(ZLandroid/content/Intent;IIZ)V

    .line 536
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .line 388
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 391
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLeftSpacerLandscape:Landroid/view/View;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mRightSpacerLandscape:Landroid/view/View;

    if-eqz p1, :cond_1

    move v1, v2

    nop

    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 394
    :cond_2
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 196
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onPause()V

    .line 198
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCountdownTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 202
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 211
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onResume()V

    .line 214
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide v0

    .line 215
    .local v0, "deadline":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 216
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2}, Lcom/android/settings/password/CredentialCheckResultTracker;->clearResult()V

    .line 217
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->handleAttemptLockout(J)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v2}, Lcom/android/internal/widget/LockPatternView;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 221
    sget-object v2, Lcom/android/settings/password/ConfirmLockPattern$Stage;->NeedToUnlock:Lcom/android/settings/password/ConfirmLockPattern$Stage;

    invoke-direct {p0, v2}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->updateStage(Lcom/android/settings/password/ConfirmLockPattern$Stage;)V

    .line 223
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCredentialCheckResultTracker:Lcom/android/settings/password/CredentialCheckResultTracker;

    invoke-virtual {v2, p0}, Lcom/android/settings/password/CredentialCheckResultTracker;->setListener(Lcom/android/settings/password/CredentialCheckResultTracker$Listener;)V

    .line 224
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 192
    return-void
.end method

.method protected onShowError()V
    .locals 0

    .line 228
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 2

    .line 232
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->prepareEnterAnimation()V

    .line 233
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mHeaderTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setAlpha(F)V

    .line 235
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 236
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mDetailsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 238
    return-void
.end method

.method public startEnterAnimation()V
    .locals 3

    .line 286
    invoke-super {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->startEnterAnimation()V

    .line 287
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setAlpha(F)V

    .line 288
    iget-object v0, p0, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmLockPattern$ConfirmLockPatternFragment;->getActiveViews()[[Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 289
    return-void
.end method
