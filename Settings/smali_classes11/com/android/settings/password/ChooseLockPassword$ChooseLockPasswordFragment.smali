.class public Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ChooseLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/text/TextWatcher;
.implements Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockPasswordFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;,
        Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    }
.end annotation


# static fields
.field private static final CONFIRM_EXISTING_REQUEST:I = 0x3a

.field static final CONTAIN_INVALID_CHARACTERS:I = 0x1

.field static final CONTAIN_NON_DIGITS:I = 0x8

.field static final CONTAIN_SEQUENTIAL_DIGITS:I = 0x10

.field private static final FRAGMENT_TAG_SAVE_AND_FINISH:Ljava/lang/String; = "save_and_finish_worker"

.field private static final KEY_CURRENT_PASSWORD:Ljava/lang/String; = "current_password"

.field private static final KEY_FIRST_PIN:Ljava/lang/String; = "first_pin"

.field private static final KEY_UI_STAGE:Ljava/lang/String; = "ui_stage"

.field private static final MIN_LETTER_IN_PASSWORD:I = 0x0

.field private static final MIN_LOWER_LETTERS_IN_PASSWORD:I = 0x2

.field private static final MIN_NON_LETTER_IN_PASSWORD:I = 0x5

.field private static final MIN_NUMBER_IN_PASSWORD:I = 0x4

.field private static final MIN_SYMBOLS_IN_PASSWORD:I = 0x3

.field private static final MIN_UPPER_LETTERS_IN_PASSWORD:I = 0x1

.field static final NOT_ENOUGH_DIGITS:I = 0x200

.field static final NOT_ENOUGH_LETTER:I = 0x40

.field static final NOT_ENOUGH_LOWER_CASE:I = 0x100

.field static final NOT_ENOUGH_NON_LETTER:I = 0x800

.field static final NOT_ENOUGH_SYMBOLS:I = 0x400

.field static final NOT_ENOUGH_UPPER_CASE:I = 0x80

.field static final NO_ERROR:I = 0x0

.field static final RECENTLY_USED:I = 0x20

.field static final RESULT_FINISHED:I = 0x1

.field static final TOO_LONG:I = 0x4

.field static final TOO_SHORT:I = 0x2


# instance fields
.field protected mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mChosenPassword:Ljava/lang/String;

.field private mClearButton:Landroid/widget/Button;

.field private mCurrentPassword:Ljava/lang/String;

.field private mFirstPin:Ljava/lang/String;

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field private mHideDrawer:Z

.field protected mIsAlphaMode:Z

.field private mLayout:Lcom/android/setupwizardlib/GlifLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMessage:Landroid/widget/TextView;

.field private mNextButton:Landroid/widget/Button;

.field private mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

.field private mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

.field private mPasswordHistoryHashFactor:[B

.field private mPasswordMaxLength:I

.field private mPasswordMinLength:I

.field private mPasswordMinLengthToFulfillAllPolicies:I

.field private mPasswordMinLetters:I

.field private mPasswordMinLowerCase:I

.field private mPasswordMinNonLetter:I

.field private mPasswordMinNumeric:I

.field private mPasswordMinSymbols:I

.field private mPasswordMinUpperCase:I

.field private mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

.field private mPasswordRequirements:[I

.field private mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

.field private mRequestedQuality:I

.field private mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

.field protected mSkipButton:Landroid/widget/Button;

.field private mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

.field protected mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 335
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 189
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 190
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 191
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 192
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 193
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 194
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 195
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 196
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 197
    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 199
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 208
    const/high16 v0, 0x20000

    iput v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 210
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 337
    return-void
.end method

.method private getMinLengthToFulfillAllPolicies()I
    .locals 4

    .line 892
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 894
    .local v0, "minLengthForLetters":I
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    add-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 896
    .local v1, "minLengthForNonLetters":I
    add-int v2, v0, v1

    return v2
.end method

.method private getPasswordHistoryHashFactor()[B
    .locals 3

    .line 758
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    if-nez v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPasswordHistoryHashFactor(Ljava/lang/String;I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    .line 762
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordHistoryHashFactor:[B

    return-object v0
.end method

.method static synthetic lambda$setupPasswordRequirementsView$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 520
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private processPasswordRequirements(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .line 600
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v0

    .line 601
    .local v0, "dpmPasswordQuality":I
    const-string v1, "lockscreen.password_type"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    .line 603
    const-string v1, "lockscreen.password_min"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 605
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 603
    const/4 v2, 0x4

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 606
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedMinimumPasswordLength(I)I

    move-result v2

    .line 603
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    .line 607
    const-string v1, "lockscreen.password_max"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    .line 608
    const-string v1, "lockscreen.password_min_letters"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 609
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLetters(I)I

    move-result v2

    .line 608
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 611
    const-string v1, "lockscreen.password_min_uppercase"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 612
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumUpperCase(I)I

    move-result v2

    .line 611
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 614
    const-string v1, "lockscreen.password_min_lowercase"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 615
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumLowerCase(I)I

    move-result v2

    .line 614
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 617
    const-string v1, "lockscreen.password_min_numeric"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 618
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNumeric(I)I

    move-result v2

    .line 617
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 620
    const-string v1, "lockscreen.password_min_symbols"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 621
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumSymbols(I)I

    move-result v2

    .line 620
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 623
    const-string v1, "lockscreen.password_min_nonletter"

    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 624
    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordMinimumNonLetter(I)I

    move-result v2

    .line 623
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 628
    const/high16 v1, 0x40000

    const/4 v2, 0x1

    if-eq v0, v1, :cond_3

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    .line 646
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 647
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 648
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 649
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 650
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 651
    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    goto :goto_0

    .line 644
    :cond_0
    goto :goto_0

    .line 635
    :cond_1
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez v1, :cond_2

    .line 636
    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 638
    :cond_2
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-nez v1, :cond_4

    .line 639
    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    goto :goto_0

    .line 630
    :cond_3
    iget v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-nez v1, :cond_4

    .line 631
    iput v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 653
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getMinLengthToFulfillAllPolicies()I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    .line 654
    return-void
.end method

.method private setHeaderText(Ljava/lang/String;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .line 941
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    .line 942
    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 943
    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {v0, p1}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 946
    return-void
.end method

.method private setupPasswordRequirementsView(Landroid/view/View;)V
    .locals 9
    .param p1, "view"    # Landroid/view/View;

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 477
    .local v0, "passwordRequirements":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 478
    .local v1, "requirementDescriptions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lez v2, :cond_0

    .line 479
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 480
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100021

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 482
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 480
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    :cond_0
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-lez v2, :cond_1

    .line 485
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001d

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 488
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 486
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 490
    :cond_1
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-lez v2, :cond_2

    .line 491
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    add-int/2addr v5, v6

    if-le v2, v5, :cond_2

    .line 492
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001c

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 495
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 493
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    :cond_2
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-lez v2, :cond_3

    .line 499
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001f

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 502
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 500
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 504
    :cond_3
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-lez v2, :cond_4

    .line 505
    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f100020

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    new-array v7, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 508
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    .line 506
    invoke-virtual {v2, v5, v6, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_4
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-lez v2, :cond_5

    .line 511
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    add-int/2addr v5, v6

    if-le v2, v5, :cond_5

    .line 512
    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 513
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f10001e

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 516
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    .line 513
    invoke-virtual {v2, v5, v6, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 520
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;->INSTANCE:Lcom/android/settings/password/-$$Lambda$ChooseLockPassword$ChooseLockPasswordFragment$WFCgmpRIhPOiOzVHNaBhMh5zoJI;

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    .line 521
    const v2, 0x7f0a03da

    .line 522
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    .line 523
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 524
    new-instance v2, Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-direct {v2}, Lcom/android/settings/password/PasswordRequirementAdapter;-><init>()V

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    .line 525
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 526
    return-void
.end method

.method private startSaveAndFinish()V
    .locals 13

    .line 966
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 967
    const-string v0, "ChooseLockPassword"

    const-string v1, "startSaveAndFinish with an existing SaveAndFinishWorker."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 968
    return-void

    .line 971
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 972
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 974
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 975
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const-string v2, "save_and_finish_worker"

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 978
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 979
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 981
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_require_password"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 983
    .local v0, "required":Z
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    iget-wide v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    iget-object v9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    iget v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v12, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move v5, v0

    invoke-virtual/range {v3 .. v12}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 985
    return-void
.end method

.method private toVisibility(Z)I
    .locals 1
    .param p1, "visibleOrGone"    # Z

    .line 936
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    return v0
.end method

.method private validatePassword(Ljava/lang/String;)I
    .locals 7
    .param p1, "password"    # Ljava/lang/String;

    .line 663
    const/4 v0, 0x0

    .line 664
    .local v0, "errorCode":I
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->computeForPassword(Ljava/lang/String;)Landroid/app/admin/PasswordMetrics;

    move-result-object v1

    .line 667
    .local v1, "metrics":Landroid/app/admin/PasswordMetrics;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    const/high16 v4, 0x30000

    if-ge v2, v3, :cond_0

    .line 668
    iget v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLengthToFulfillAllPolicies:I

    if-le v2, v3, :cond_3

    .line 669
    or-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 671
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    if-le v2, v3, :cond_1

    .line 672
    or-int/lit8 v0, v0, 0x4

    goto :goto_0

    .line 675
    :cond_1
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordQuality(I)I

    move-result v2

    .line 676
    .local v2, "dpmQuality":I
    if-ne v2, v4, :cond_2

    iget v3, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    .line 677
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ne v3, v5, :cond_2

    .line 683
    invoke-static {p1}, Landroid/app/admin/PasswordMetrics;->maxLengthSequence(Ljava/lang/String;)I

    move-result v3

    .line 684
    .local v3, "sequence":I
    const/4 v5, 0x3

    if-le v3, v5, :cond_2

    .line 685
    or-int/lit8 v0, v0, 0x10

    .line 689
    .end local v3    # "sequence":I
    :cond_2
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getPasswordHistoryHashFactor()[B

    move-result-object v5

    iget v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v3, p1, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->checkPasswordHistory(Ljava/lang/String;[BI)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 691
    or-int/lit8 v0, v0, 0x20

    .line 696
    .end local v2    # "dpmQuality":I
    :cond_3
    :goto_0
    const/4 v2, 0x0

    move v3, v2

    .local v3, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v3, v5, :cond_6

    .line 697
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 698
    .local v5, "c":C
    const/16 v6, 0x20

    if-lt v5, v6, :cond_5

    const/16 v6, 0x7f

    if-le v5, v6, :cond_4

    goto :goto_2

    .line 696
    .end local v5    # "c":C
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 699
    .restart local v5    # "c":C
    :cond_5
    :goto_2
    or-int/lit8 v0, v0, 0x1

    .line 700
    nop

    .line 706
    .end local v3    # "i":I
    .end local v5    # "c":C
    :cond_6
    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    const/high16 v5, 0x20000

    if-eq v3, v5, :cond_7

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v3, v4, :cond_9

    .line 708
    :cond_7
    iget v3, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    if-gtz v3, :cond_8

    iget v3, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    if-lez v3, :cond_9

    .line 709
    :cond_8
    or-int/lit8 v0, v0, 0x8

    .line 714
    :cond_9
    nop

    .local v2, "i":I
    :goto_3
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    array-length v3, v3

    if-ge v2, v3, :cond_b

    .line 715
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirements:[I

    aget v3, v3, v2

    .line 716
    .local v3, "passwordRestriction":I
    packed-switch v3, :pswitch_data_0

    .end local v3    # "passwordRestriction":I
    goto :goto_4

    .line 743
    .restart local v3    # "passwordRestriction":I
    :pswitch_0
    iget v4, v1, Landroid/app/admin/PasswordMetrics;->nonLetter:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    if-ge v4, v5, :cond_a

    .line 744
    or-int/lit16 v0, v0, 0x800

    .end local v3    # "passwordRestriction":I
    goto :goto_4

    .line 738
    .restart local v3    # "passwordRestriction":I
    :pswitch_1
    iget v4, v1, Landroid/app/admin/PasswordMetrics;->numeric:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    if-ge v4, v5, :cond_a

    .line 739
    or-int/lit16 v0, v0, 0x200

    goto :goto_4

    .line 733
    :pswitch_2
    iget v4, v1, Landroid/app/admin/PasswordMetrics;->symbols:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    if-ge v4, v5, :cond_a

    .line 734
    or-int/lit16 v0, v0, 0x400

    goto :goto_4

    .line 728
    :pswitch_3
    iget v4, v1, Landroid/app/admin/PasswordMetrics;->lowerCase:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    if-ge v4, v5, :cond_a

    .line 729
    or-int/lit16 v0, v0, 0x100

    goto :goto_4

    .line 723
    :pswitch_4
    iget v4, v1, Landroid/app/admin/PasswordMetrics;->upperCase:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    if-ge v4, v5, :cond_a

    .line 724
    or-int/lit16 v0, v0, 0x80

    goto :goto_4

    .line 718
    :pswitch_5
    iget v4, v1, Landroid/app/admin/PasswordMetrics;->letters:I

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    if-ge v4, v5, :cond_a

    .line 719
    or-int/lit8 v0, v0, 0x40

    .line 714
    .end local v3    # "passwordRestriction":I
    :cond_a
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 750
    .end local v2    # "i":I
    :cond_b
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .param p1, "s"    # Landroid/text/Editable;

    .line 950
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_0

    .line 951
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-static {v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;->access$000(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;)V

    .line 955
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 959
    return-void
.end method

.method convertErrorCodeToMessages(I)[Ljava/lang/String;
    .locals 8
    .param p1, "errorCode"    # I

    .line 834
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 835
    .local v0, "messages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    and-int/lit8 v1, p1, 0x1

    if-lez v1, :cond_0

    .line 836
    const v1, 0x7f1208a8

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 838
    :cond_0
    and-int/lit8 v1, p1, 0x8

    if-lez v1, :cond_1

    .line 839
    const v1, 0x7f1208b5

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 841
    :cond_1
    and-int/lit16 v1, p1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v1, :cond_2

    .line 842
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100021

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinUpperCase:I

    .line 844
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 842
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 846
    :cond_2
    and-int/lit16 v1, p1, 0x100

    if-lez v1, :cond_3

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001d

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLowerCase:I

    .line 849
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 847
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 851
    :cond_3
    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_4

    .line 852
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001c

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLetters:I

    .line 854
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 852
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 856
    :cond_4
    and-int/lit16 v1, p1, 0x200

    if-lez v1, :cond_5

    .line 857
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001f

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNumeric:I

    .line 859
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 857
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 861
    :cond_5
    and-int/lit16 v1, p1, 0x400

    if-lez v1, :cond_6

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f100020

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinSymbols:I

    .line 864
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 862
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 866
    :cond_6
    and-int/lit16 v1, p1, 0x800

    if-lez v1, :cond_7

    .line 867
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f10001e

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    new-array v6, v3, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinNonLetter:I

    .line 869
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    .line 867
    invoke-virtual {v1, v4, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 871
    :cond_7
    and-int/lit8 v1, p1, 0x2

    if-lez v1, :cond_9

    .line 872
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_8

    .line 873
    const v1, 0x7f1208b2

    goto :goto_0

    .line 874
    :cond_8
    const v1, 0x7f1208ba

    :goto_0
    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 872
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_9
    and-int/lit8 v1, p1, 0x4

    if-lez v1, :cond_b

    .line 877
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_a

    .line 878
    const v1, 0x7f1208b1

    goto :goto_1

    .line 879
    :cond_a
    const v1, 0x7f1208b9

    :goto_1
    new-array v4, v3, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMaxLength:I

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    .line 877
    invoke-virtual {p0, v1, v4}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 881
    :cond_b
    and-int/lit8 v1, p1, 0x10

    if-lez v1, :cond_c

    .line 882
    const v1, 0x7f1208b6

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 884
    :cond_c
    and-int/lit8 v1, p1, 0x20

    if-lez v1, :cond_e

    .line 885
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_d

    const v1, 0x7f1208ac

    goto :goto_2

    .line 886
    :cond_d
    const v1, 0x7f1208b7

    .line 885
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 888
    :cond_e
    new-array v1, v2, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 530
    const/16 v0, 0x1c

    return v0
.end method

.method protected getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 579
    iget v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-static {p1, v0}, Lcom/android/settings/notification/RedactionInterstitial;->createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public handleNext()V
    .locals 4

    .line 766
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    return-void

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    .line 768
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 769
    return-void

    .line 771
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_2

    .line 772
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_7

    .line 773
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 774
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 775
    sget-object v0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    goto :goto_0

    .line 777
    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->NeedToConfirm:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v0, v1, :cond_7

    .line 778
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 779
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startSaveAndFinish()V

    .line 781
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_4

    .line 782
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChosenPassword:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-long v1, v1

    nop

    :cond_3
    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->savePINPasswordLength(JI)V

    goto :goto_0

    .line 785
    :cond_4
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->savePINPasswordLength(JI)V

    goto :goto_0

    .line 789
    :cond_5
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 790
    .local v0, "tmp":Ljava/lang/CharSequence;
    if-eqz v0, :cond_6

    .line 791
    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 793
    :cond_6
    sget-object v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->ConfirmWrong:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 796
    .end local v0    # "tmp":Ljava/lang/CharSequence;
    :cond_7
    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 564
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 565
    const/16 v0, 0x3a

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 567
    :cond_0
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 568
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 569
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 571
    :cond_1
    const-string v0, "password"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 576
    :goto_0
    return-void
.end method

.method public onChosenLockSaveFinished(ZLandroid/content/Intent;)V
    .locals 3
    .param p1, "wasSecureBefore"    # Z
    .param p2, "resultData"    # Landroid/content/Intent;

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 991
    if-nez p1, :cond_0

    .line 992
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getRedactionInterstitialIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 993
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 994
    const-string v1, ":settings:hide_drawer"

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 995
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->startActivity(Landroid/content/Intent;)V

    .line 998
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 999
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 807
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a0100

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a0338

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 810
    goto :goto_0

    .line 813
    :cond_1
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setText(Ljava/lang/CharSequence;)V

    .line 816
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 341
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 342
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    instance-of v1, v1, Lcom/android/settings/password/ChooseLockPassword;

    if-eqz v1, :cond_1

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 349
    const-string v1, "for_fingerprint"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    .line 351
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->processPasswordRequirements(Landroid/content/Intent;)V

    .line 352
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, ":settings:hide_drawer"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHideDrawer:Z

    .line 355
    const-string v1, "for_cred_req_boot"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 357
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-direct {v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;-><init>()V

    .line 358
    .local v1, "w":Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_require_password"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v12

    .line 360
    .local v12, "required":Z
    const-string v2, "password"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 362
    .local v13, "current":Ljava/lang/String;
    invoke-virtual {v1, v4}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setBlocking(Z)V

    .line 363
    invoke-virtual {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 364
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v3

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget v10, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    iget v11, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    move-object v2, v1

    move v4, v12

    move-object v8, v13

    move-object v9, v13

    invoke-virtual/range {v2 .. v11}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->start(Lcom/android/internal/widget/LockPatternUtils;ZZJLjava/lang/String;Ljava/lang/String;II)V

    .line 367
    .end local v1    # "w":Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;
    .end local v12    # "required":Z
    .end local v13    # "current":Ljava/lang/String;
    :cond_0
    new-instance v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;-><init>(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mTextChangedHandler:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$TextChangedHandler;

    .line 368
    return-void

    .line 345
    :cond_1
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Fragment contained in wrong activity"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .line 373
    const v0, 0x7f0d0049

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 820
    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-eq p2, v0, :cond_1

    const/4 v0, 0x5

    if-ne p2, v0, :cond_0

    goto :goto_0

    .line 826
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 823
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->handleNext()V

    .line 824
    const/4 v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 547
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 548
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    .line 550
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 551
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 535
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 536
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 537
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    invoke-virtual {v0, p0}, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;->setListener(Lcom/android/settings/password/SaveChosenLockWorkerBase$Listener;)V

    goto :goto_0

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 541
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 543
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 555
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 556
    const-string v0, "ui_stage"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v0, "first_pin"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 558
    const-string v0, "current_password"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 559
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 963
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 10
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 378
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 380
    move-object v0, p1

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    .line 384
    const v0, 0x7f0a03d6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 385
    .local v0, "container":Landroid/view/ViewGroup;
    sget-object v1, Landroid/graphics/Insets;->NONE:Landroid/graphics/Insets;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOpticalInsets(Landroid/graphics/Insets;)V

    .line 387
    const v1, 0x7f0a04be

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipButton:Landroid/widget/Button;

    .line 388
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSkipButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    const v1, 0x7f0a0338

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    .line 390
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 391
    const v1, 0x7f0a0100

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    .line 392
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 394
    const v1, 0x7f0a007f

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    .line 395
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 397
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->getPINPasswordLength(I)I

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 402
    :cond_1
    const v1, 0x7f0a0312

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    .line 403
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    if-eqz v1, :cond_2

    .line 404
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f080199

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/setupwizardlib/GlifLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 407
    :cond_2
    const/high16 v1, 0x40000

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v1, v4, :cond_4

    const/high16 v1, 0x50000

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-eq v1, v4, :cond_4

    const/high16 v1, 0x60000

    iget v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mRequestedQuality:I

    if-ne v1, v4, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    goto :goto_2

    :cond_4
    :goto_1
    move v1, v3

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    .line 411
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v1, :cond_5

    .line 412
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mAutoCheckPinLengthCheckBox:Landroid/widget/CheckBox;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 415
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setupPasswordRequirementsView(Landroid/view/View;)V

    .line 417
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    new-instance v4, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v4}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 418
    const v1, 0x7f0a03d7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 419
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 420
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 421
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 422
    new-instance v1, Lcom/android/internal/widget/TextViewInputDisabler;

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {v1, v4}, Lcom/android/internal/widget/TextViewInputDisabler;-><init>(Landroid/widget/TextView;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 426
    .local v1, "activity":Landroid/app/Activity;
    iget-object v4, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v4}, Lcom/android/settings/widget/ImeAwareEditText;->getInputType()I

    move-result v4

    .line 427
    .local v4, "currentType":I
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    if-eqz v6, :cond_6

    move v6, v4

    goto :goto_3

    .line 428
    :cond_6
    const/16 v6, 0x12

    .line 427
    :goto_3
    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ImeAwareEditText;->setInputType(I)V

    .line 430
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x1040157

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 430
    invoke-static {v6, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/ImeAwareEditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    .line 435
    .local v5, "intent":Landroid/content/Intent;
    const-string v6, "confirm_credentials"

    invoke-virtual {v5, v6, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 437
    .local v6, "confirmCredentials":Z
    const-string v7, "password"

    invoke-virtual {v5, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 438
    const-string v7, "has_challenge"

    invoke-virtual {v5, v7, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mHasChallenge:Z

    .line 440
    const-string v2, "challenge"

    const-wide/16 v7, 0x0

    invoke-virtual {v5, v2, v7, v8}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChallenge:J

    .line 441
    if-nez p2, :cond_7

    .line 442
    sget-object v2, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 443
    if-eqz v6, :cond_a

    .line 444
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    const/16 v7, 0x3a

    const v8, 0x7f12123f

    .line 445
    invoke-virtual {p0, v8}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v8

    iget v9, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUserId:I

    .line 444
    invoke-virtual {v2, v7, v8, v3, v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    goto :goto_4

    .line 450
    :cond_7
    const-string v2, "first_pin"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mFirstPin:Ljava/lang/String;

    .line 451
    const-string v2, "ui_stage"

    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 452
    .local v2, "state":Ljava/lang/String;
    if-eqz v2, :cond_8

    .line 453
    invoke-static {v2}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->valueOf(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 454
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    invoke-virtual {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V

    .line 457
    :cond_8
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    if-nez v3, :cond_9

    .line 458
    const-string v3, "current_password"

    invoke-virtual {p2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mCurrentPassword:Ljava/lang/String;

    .line 462
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v7, "save_and_finish_worker"

    invoke-virtual {v3, v7}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    iput-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    .line 466
    .end local v2    # "state":Ljava/lang/String;
    :cond_a
    :goto_4
    instance-of v2, v1, Lcom/android/settings/SettingsActivity;

    if-eqz v2, :cond_b

    .line 467
    move-object v2, v1

    check-cast v2, Lcom/android/settings/SettingsActivity;

    .line 468
    .local v2, "sa":Lcom/android/settings/SettingsActivity;
    sget-object v3, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    iget-boolean v8, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {v3, v7, v8}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->getHint(ZZ)I

    move-result v3

    .line 469
    .local v3, "title":I
    invoke-virtual {v2, v3}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 470
    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {v7, v3}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(I)V

    .line 472
    .end local v2    # "sa":Lcom/android/settings/SettingsActivity;
    .end local v3    # "title":I
    :cond_b
    return-void
.end method

.method protected setNextEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .line 799
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 800
    return-void
.end method

.method protected setNextText(I)V
    .locals 1
    .param p1, "text"    # I

    .line 803
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 804
    return-void
.end method

.method protected updateStage(Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;)V
    .locals 3
    .param p1, "stage"    # Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 583
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 584
    .local v0, "previousStage":Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;
    iput-object p1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->updateUi()V

    .line 589
    if-eq v0, p1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mLayout:Lcom/android/setupwizardlib/GlifLayout;

    invoke-virtual {v2}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/setupwizardlib/GlifLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 592
    :cond_0
    return-void
.end method

.method protected updateUi()V
    .locals 9

    .line 903
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mSaveAndFinishWorker:Lcom/android/settings/password/ChooseLockPassword$SaveAndFinishWorker;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 904
    .local v0, "canInput":Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v3}, Lcom/android/settings/widget/ImeAwareEditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 905
    .local v3, "password":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    .line 906
    .local v4, "length":I
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v6, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-ne v5, v6, :cond_2

    .line 907
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v5, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 908
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->validatePassword(Ljava/lang/String;)I

    move-result v5

    .line 909
    .local v5, "errorCode":I
    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->convertErrorCodeToMessages(I)[Ljava/lang/String;

    move-result-object v6

    .line 911
    .local v6, "messages":[Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRequirementAdapter:Lcom/android/settings/password/PasswordRequirementAdapter;

    invoke-virtual {v7, v6}, Lcom/android/settings/password/PasswordRequirementAdapter;->setRequirements([Ljava/lang/String;)V

    .line 913
    if-nez v5, :cond_1

    move v7, v1

    goto :goto_1

    :cond_1
    move v7, v2

    :goto_1
    invoke-virtual {p0, v7}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 914
    .end local v5    # "errorCode":I
    .end local v6    # "messages":[Ljava/lang/String;
    goto :goto_4

    .line 916
    :cond_2
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordRestrictionView:Landroid/support/v7/widget/RecyclerView;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 917
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->getHint(ZZ)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setHeaderText(Ljava/lang/String;)V

    .line 918
    if-eqz v0, :cond_3

    iget v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordMinLength:I

    if-lt v4, v5, :cond_3

    move v5, v1

    goto :goto_2

    :cond_3
    move v5, v2

    :goto_2
    invoke-virtual {p0, v5}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextEnabled(Z)V

    .line 919
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    if-eqz v0, :cond_4

    if-lez v4, :cond_4

    move v6, v1

    goto :goto_3

    :cond_4
    move v6, v2

    :goto_3
    invoke-virtual {v5, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 921
    :goto_4
    iget-object v5, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget-boolean v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mIsAlphaMode:Z

    iget-boolean v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mForFingerprint:Z

    invoke-virtual {v5, v6, v7}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->getMessage(ZZ)I

    move-result v5

    .line 922
    .local v5, "message":I
    if-eqz v5, :cond_5

    .line 923
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 924
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_5

    .line 926
    :cond_5
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mMessage:Landroid/widget/TextView;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 929
    :goto_5
    iget-object v6, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mClearButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    sget-object v8, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->Introduction:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    if-eq v7, v8, :cond_6

    goto :goto_6

    :cond_6
    move v1, v2

    :goto_6
    invoke-direct {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->toVisibility(Z)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 931
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mUiStage:Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;

    iget v1, v1, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment$Stage;->buttonText:I

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->setNextText(I)V

    .line 932
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockPassword$ChooseLockPasswordFragment;->mPasswordEntryInputDisabler:Lcom/android/internal/widget/TextViewInputDisabler;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/TextViewInputDisabler;->setInputEnabled(Z)V

    .line 933
    return-void
.end method
