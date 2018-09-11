.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$ValidationTask;,
        Lcom/android/settings/CryptKeeper$DecryptTask;,
        Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    }
.end annotation


# static fields
.field static final ACTION_EMERGENCY_DIAL:Ljava/lang/String; = "com.android.phone.EmergencyDialer.DIAL"

.field private static final COOL_DOWN_ATTEMPTS:I = 0xa

.field private static final DECRYPT_STATE:Ljava/lang/String; = "trigger_restart_framework"

.field private static final EXTRA_FORCE_VIEW:Ljava/lang/String; = "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

.field private static final FAKE_ATTEMPT_DELAY:I = 0x3e8

.field private static final FORCE_VIEW_ERROR:Ljava/lang/String; = "error"

.field private static final FORCE_VIEW_PASSWORD:Ljava/lang/String; = "password"

.field private static final FORCE_VIEW_PROGRESS:Ljava/lang/String; = "progress"

.field private static final MAX_FAILED_ATTEMPTS:I = 0x1e

.field private static final MESSAGE_NOTIFY:I = 0x2

.field private static final MESSAGE_UPDATE_PROGRESS:I = 0x1

.field protected static final MIN_LENGTH_BEFORE_REPORT:I = 0x4

.field private static final RIGHT_PATTERN_CLEAR_TIMEOUT_MS:I = 0x1f4

.field private static final STATE_COOLDOWN:Ljava/lang/String; = "cooldown"

.field private static final TAG:Ljava/lang/String; = "CryptKeeper"

.field private static final WRONG_PATTERN_CLEAR_TIMEOUT_MS:I = 0x5dc

.field private static final sWidgetsToDisable:I = 0x3270000


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field protected mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private final mClearPatternRunnable:Ljava/lang/Runnable;

.field private mCooldown:Z

.field private mCorrupt:Z

.field private mEncryptionGoneBad:Z

.field private final mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

.field private final mHandler:Landroid/os/Handler;

.field private mLockPatternView:Lcom/android/internal/widget/LockPatternView;

.field private mNotificationCountdown:I

.field private mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

.field private mReleaseWakeLockCountdown:I

.field private mStatusBar:Landroid/app/StatusBarManager;

.field private mStatusString:I

.field private mValidationComplete:Z

.field private mValidationRequested:Z

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 85
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 128
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 130
    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 131
    const v0, 0x7f1205fb

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    .line 141
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    .line 151
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    .line 320
    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    .line 715
    new-instance v0, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Ljava/lang/Integer;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->handleBadAttempt(Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->notifyUser()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/CryptKeeper;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/settings/CryptKeeper;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # I

    .line 85
    iput p1, p0, Lcom/android/settings/CryptKeeper;->mStatusString:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->passwordEntryInit()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/CryptKeeper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Landroid/view/View;

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->takeEmergencyCallAction()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/CryptKeeper;)Landroid/os/storage/IStorageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/settings/CryptKeeper;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    return p1
.end method

.method static synthetic access$802(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;
    .param p1, "x1"    # Z

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/CryptKeeper;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/CryptKeeper;

    .line 85
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    return-void
.end method

.method private beginAttempt()V
    .locals 2

    .line 229
    const v0, 0x7f0a04de

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 230
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f1203c7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    return-void
.end method

.method private cooldown()V
    .locals 2

    .line 687
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 688
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 690
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 691
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 694
    :cond_1
    const v0, 0x7f0a04de

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 695
    .local v0, "status":Landroid/widget/TextView;
    const v1, 0x7f120468

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 696
    return-void
.end method

.method private delayAudioNotification()V
    .locals 1

    .line 1000
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    .line 1001
    return-void
.end method

.method private static disableCryptKeeperComponent(Landroid/content/Context;)V
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .line 1031
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 1032
    .local v0, "pm":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/CryptKeeper;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1033
    .local v1, "name":Landroid/content/ComponentName;
    const-string v2, "CryptKeeper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disabling component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 1036
    return-void
.end method

.method private encryptionProgressInit()V
    .locals 3

    .line 580
    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 582
    const-string v0, "CryptKeeper"

    const-string v1, "Acquiring wakelock."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 584
    .local v0, "pm":Landroid/os/PowerManager;
    const/16 v1, 0x1a

    const-string v2, "CryptKeeper"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 585
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 588
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    const v0, 0x7f0a0412

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 590
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 593
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateProgress()V

    .line 594
    return-void
.end method

.method private fakeUnlockAttempt(Landroid/view/View;)V
    .locals 3
    .param p1, "postingView"    # Landroid/view/View;

    .line 711
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->beginAttempt()V

    .line 712
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mFakeUnlockAttemptRunnable:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 713
    return-void
.end method

.method private getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 2

    .line 866
    const-string v0, "mount"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 867
    .local v0, "service":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 868
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v1

    return-object v1

    .line 870
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getTelecomManager()Landroid/telecom/TelecomManager;
    .locals 1

    .line 993
    const-string v0, "telecom"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 1

    .line 989
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private handleBadAttempt(Ljava/lang/Integer;)V
    .locals 8
    .param p1, "failedAttempts"    # Ljava/lang/Integer;

    .line 235
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 237
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 238
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mClearPatternRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 241
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 244
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->cooldown()V

    goto/16 :goto_2

    .line 246
    :cond_1
    const v0, 0x7f0a04de

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 248
    .local v0, "status":Landroid/widget/TextView;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1e

    .line 249
    .local v3, "remainingAttempts":I
    const/4 v4, 0x0

    if-ge v3, v1, :cond_2

    .line 250
    const v1, 0x7f120470

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 251
    .local v1, "warningTemplate":Ljava/lang/CharSequence;
    new-array v5, v2, [Ljava/lang/CharSequence;

    .line 252
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v4

    .line 251
    invoke-static {v1, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 253
    .local v4, "warning":Ljava/lang/CharSequence;
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    .end local v1    # "warningTemplate":Ljava/lang/CharSequence;
    .end local v4    # "warning":Ljava/lang/CharSequence;
    goto :goto_1

    .line 255
    :cond_2
    move v1, v4

    .line 257
    .local v1, "passwordType":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getStorageManager()Landroid/os/storage/IStorageManager;

    move-result-object v4

    .line 258
    .local v4, "service":Landroid/os/storage/IStorageManager;
    invoke-interface {v4}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v5

    .line 261
    .end local v4    # "service":Landroid/os/storage/IStorageManager;
    goto :goto_0

    .line 259
    :catch_0
    move-exception v4

    .line 260
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error calling mount service "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    const/4 v4, 0x2

    if-ne v1, v4, :cond_3

    .line 264
    const v4, 0x7f120475

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 265
    :cond_3
    const/4 v4, 0x3

    if-ne v1, v4, :cond_4

    .line 266
    const v4, 0x7f120474

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 268
    :cond_4
    const v4, 0x7f120473

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 272
    .end local v1    # "passwordType":I
    :goto_1
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v1, :cond_5

    .line 273
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    sget-object v4, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 278
    :cond_5
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v1, :cond_6

    .line 279
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 280
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v1}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 281
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 284
    .end local v0    # "status":Landroid/widget/TextView;
    .end local v3    # "remainingAttempts":I
    :cond_6
    :goto_2
    return-void
.end method

.method private hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z
    .locals 10
    .param p1, "imm"    # Landroid/view/inputmethod/InputMethodManager;
    .param p2, "shouldIncludeAuxiliarySubtypes"    # Z

    .line 826
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 829
    .local v0, "enabledImis":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodInfo;>;"
    const/4 v1, 0x0

    .line 831
    .local v1, "filteredImisCount":I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    .line 833
    .local v3, "imi":Landroid/view/inputmethod/InputMethodInfo;
    if-le v1, v4, :cond_0

    return v4

    .line 834
    :cond_0
    nop

    .line 835
    invoke-virtual {p1, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v5

    .line 837
    .local v5, "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 838
    add-int/lit8 v1, v1, 0x1

    .line 839
    goto :goto_0

    .line 842
    :cond_1
    const/4 v6, 0x0

    .line 843
    .local v6, "auxCount":I
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodSubtype;

    .line 844
    .local v8, "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    invoke-virtual {v8}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 845
    add-int/lit8 v6, v6, 0x1

    .line 847
    .end local v8    # "subtype":Landroid/view/inputmethod/InputMethodSubtype;
    :cond_2
    goto :goto_1

    .line 848
    :cond_3
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    .line 853
    .local v7, "nonAuxCount":I
    if-gtz v7, :cond_5

    if-eqz p2, :cond_4

    if-le v6, v4, :cond_4

    goto :goto_2

    .line 857
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "auxCount":I
    .end local v7    # "nonAuxCount":I
    :cond_4
    goto :goto_0

    .line 854
    .restart local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .restart local v5    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .restart local v6    # "auxCount":I
    .restart local v7    # "nonAuxCount":I
    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 855
    goto :goto_0

    .line 859
    .end local v3    # "imi":Landroid/view/inputmethod/InputMethodInfo;
    .end local v5    # "subtypes":Ljava/util/List;, "Ljava/util/List<Landroid/view/inputmethod/InputMethodSubtype;>;"
    .end local v6    # "auxCount":I
    .end local v7    # "nonAuxCount":I
    :cond_6
    const/4 v2, 0x0

    if-gt v1, v4, :cond_8

    const/4 v3, 0x0

    .line 862
    invoke-virtual {p1, v3, v2}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_7

    goto :goto_3

    :cond_7
    goto :goto_4

    .line 859
    :cond_8
    :goto_3
    move v2, v4

    :goto_4
    return v2
.end method

.method private isDebugView()Z
    .locals 2

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isDebugView(Ljava/lang/String;)Z
    .locals 2
    .param p1, "viewType"    # Ljava/lang/String;

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isEmergencyCallCapable()Z
    .locals 2

    .line 967
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200d1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private launchEmergencyDialer()V
    .locals 2

    .line 981
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 982
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10800000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 984
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 985
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    .line 986
    return-void
.end method

.method private notifyUser()V
    .locals 4

    .line 363
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    if-lez v0, :cond_0

    .line 364
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mNotificationCountdown:I

    goto :goto_0

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    .line 372
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x5

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "CryptKeeper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyUser: Exception while playing sound: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 379
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 381
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 382
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    if-lez v0, :cond_2

    .line 383
    iget v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    goto :goto_1

    .line 385
    :cond_2
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 388
    :cond_3
    :goto_1
    return-void
.end method

.method private passwordEntryInit()V
    .locals 6

    .line 745
    const v0, 0x7f0a03d5

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    .line 746
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 748
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 750
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 756
    :cond_0
    const v0, 0x7f0a02ef

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    .line 757
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mChooseNewLockPatternListener:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 762
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_2

    .line 763
    const v0, 0x7f0a01a3

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 764
    .local v0, "emergencyCall":Landroid/view/View;
    if-eqz v0, :cond_2

    .line 765
    const-string v1, "CryptKeeper"

    const-string v2, "Removing the emergency Call button"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 770
    .end local v0    # "emergencyCall":Landroid/view/View;
    :cond_2
    const v0, 0x7f0a0522

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 771
    .local v0, "imeSwitcher":Landroid/view/View;
    const-string v1, "input_method"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 773
    .local v1, "imm":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/android/settings/CryptKeeper;->hasMultipleEnabledIMEsOrSubtypes(Landroid/view/inputmethod/InputMethodManager;Z)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 774
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 775
    new-instance v2, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 786
    :cond_3
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v2, :cond_4

    .line 787
    const-string v2, "CryptKeeper"

    const-string v3, "Acquiring wakelock."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    const-string v2, "power"

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 789
    .local v2, "pm":Landroid/os/PowerManager;
    if-eqz v2, :cond_4

    .line 790
    const/16 v3, 0x1a

    const-string v4, "CryptKeeper"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 791
    iget-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 794
    const/16 v3, 0x60

    iput v3, p0, Lcom/android/settings/CryptKeeper;->mReleaseWakeLockCountdown:I

    .line 799
    .end local v2    # "pm":Landroid/os/PowerManager;
    :cond_4
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    if-nez v2, :cond_5

    .line 800
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 802
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v2, :cond_5

    .line 803
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v2}, Lcom/android/settings/widget/ImeAwareEditText;->scheduleShowSoftInput()V

    .line 807
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->updateEmergencyCallButtonState()V

    .line 809
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 810
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0x1d4c0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 813
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x480000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 815
    return-void
.end method

.method private final setAirplaneModeIfNecessary()V
    .locals 4

    .line 919
    nop

    .line 920
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 921
    .local v0, "isLteDevice":Z
    :goto_0
    if-nez v0, :cond_1

    .line 922
    const-string v2, "CryptKeeper"

    const-string v3, "Going into airplane mode."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 924
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 925
    .local v2, "intent":Landroid/content/Intent;
    const-string v3, "state"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 926
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 928
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method private final setBackFunctionality(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 703
    if-eqz p1, :cond_0

    .line 704
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3270000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    goto :goto_0

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3670000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    .line 708
    :goto_0
    return-void
.end method

.method private setupUi()V
    .locals 3

    .line 465
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mEncryptionGoneBad:Z

    const v1, 0x7f0d006b

    if-nez v0, :cond_6

    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    .line 471
    :cond_0
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 472
    .local v0, "progress":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "progress"

    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 475
    :cond_1
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationComplete:Z

    if-nez v1, :cond_3

    const-string v1, "password"

    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->isDebugView(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_0

    .line 535
    :cond_2
    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    if-nez v1, :cond_5

    .line 537
    new-instance v1, Lcom/android/settings/CryptKeeper$ValidationTask;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/CryptKeeper$ValidationTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$ValidationTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 538
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mValidationRequested:Z

    goto :goto_2

    .line 476
    :cond_3
    :goto_0
    new-instance v1, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    .line 534
    invoke-virtual {v1, v2}, Lcom/android/settings/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    .line 473
    :cond_4
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 474
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->encryptionProgressInit()V

    .line 540
    :cond_5
    :goto_2
    return-void

    .line 466
    .end local v0    # "progress":Ljava/lang/String;
    :cond_6
    :goto_3
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 467
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->mCorrupt:Z

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 468
    return-void
.end method

.method private showFactoryReset(Z)V
    .locals 5
    .param p1, "corrupt"    # Z

    .line 604
    const v0, 0x7f0a01a6

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    const v0, 0x7f0a01cc

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 608
    .local v0, "button":Landroid/widget/Button;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 609
    new-instance v2, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 623
    const v2, 0x7f0a04de

    const v3, 0x7f0a054f

    if-eqz p1, :cond_0

    .line 624
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f12045e

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 625
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f12045d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 627
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120466

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 628
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120465

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 631
    :goto_0
    const v2, 0x7f0a009f

    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 633
    .local v2, "view":Landroid/view/View;
    if-eqz v2, :cond_1

    .line 634
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 636
    :cond_1
    return-void
.end method

.method private takeEmergencyCallAction()V
    .locals 2

    .line 971
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 972
    .local v0, "telecomManager":Landroid/telecom/TelecomManager;
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 973
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    goto :goto_0

    .line 975
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->launchEmergencyDialer()V

    .line 977
    :goto_0
    return-void
.end method

.method private updateEmergencyCallButtonState()V
    .locals 2

    .line 937
    const v0, 0x7f0a01a3

    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 939
    .local v0, "emergencyCall":Landroid/widget/Button;
    if-nez v0, :cond_0

    .line 940
    return-void

    .line 942
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isEmergencyCallCapable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 943
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 944
    new-instance v1, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 957
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->getTelecomManager()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 959
    const v1, 0x7f120472

    .local v1, "textId":I
    goto :goto_0

    .line 961
    .end local v1    # "textId":I
    :cond_1
    const v1, 0x7f120471

    .line 963
    .restart local v1    # "textId":I
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 964
    return-void

    .line 952
    .end local v1    # "textId":I
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 953
    return-void
.end method

.method private updateProgress()V
    .locals 10

    .line 639
    const-string v0, "vold.encrypt_progress"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 641
    .local v0, "state":Ljava/lang/String;
    const-string v1, "error_partially_encrypted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 642
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->showFactoryReset(Z)V

    .line 643
    return-void

    .line 647
    :cond_0
    const v1, 0x7f12046b

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 648
    .local v1, "status":Ljava/lang/CharSequence;
    move v3, v2

    .line 651
    .local v3, "percent":I
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v4, 0x32

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    move v3, v4

    .line 654
    goto :goto_1

    .line 652
    :catch_0
    move-exception v4

    .line 653
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error parsing progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 655
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 658
    .local v4, "progress":Ljava/lang/String;
    const-string v5, "CryptKeeper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Encryption progress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    :try_start_1
    const-string v5, "vold.encrypt_time_remaining"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 661
    .local v5, "timeProperty":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    .line 662
    .local v6, "time":I
    if-ltz v6, :cond_2

    .line 664
    add-int/lit8 v7, v6, 0x9

    div-int/lit8 v7, v7, 0xa

    mul-int/lit8 v7, v7, 0xa

    .line 665
    .end local v6    # "time":I
    .local v7, "time":I
    int-to-long v8, v7

    invoke-static {v8, v9}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 666
    const v6, 0x7f12046c

    invoke-virtual {p0, v6}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v6

    .line 670
    .end local v5    # "timeProperty":Ljava/lang/String;
    .end local v7    # "time":I
    :cond_2
    goto :goto_2

    .line 668
    :catch_1
    move-exception v5

    .line 672
    :goto_2
    const v5, 0x7f0a04de

    invoke-virtual {p0, v5}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 673
    .local v5, "tv":Landroid/widget/TextView;
    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 674
    new-array v7, v6, [Ljava/lang/CharSequence;

    aput-object v4, v7, v2

    invoke-static {v1, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    :cond_3
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 679
    iget-object v2, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const-wide/16 v7, 0x3e8

    invoke-virtual {v2, v6, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 680
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .line 1027
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .line 1017
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 396
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 400
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 403
    const-string v0, "vold.decrypt"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, "state":Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->isDebugView()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 405
    :cond_0
    invoke-static {p0}, Lcom/android/settings/CryptKeeper;->disableCryptKeeperComponent(Landroid/content/Context;)V

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    .line 414
    return-void

    .line 418
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f05004a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 419
    const/4 v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    :cond_2
    goto :goto_0

    .line 421
    :catch_0
    move-exception v1

    .line 426
    :goto_0
    const-string v1, "statusbar"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    .line 427
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mStatusBar:Landroid/app/StatusBarManager;

    const/high16 v2, 0x3270000

    invoke-virtual {v1, v2}, Landroid/app/StatusBarManager;->disable(I)V

    .line 429
    if-eqz p1, :cond_3

    .line 430
    const-string v1, "cooldown"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    .line 433
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setAirplaneModeIfNecessary()V

    .line 434
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mAudioManager:Landroid/media/AudioManager;

    .line 436
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    .line 437
    .local v1, "lastInstance":Ljava/lang/Object;
    instance-of v2, v1, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    if-eqz v2, :cond_4

    .line 438
    move-object v2, v1

    check-cast v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    .line 439
    .local v2, "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    iget-object v3, v2, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;->wakelock:Landroid/os/PowerManager$WakeLock;

    iput-object v3, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 440
    const-string v3, "CryptKeeper"

    const-string v4, "Restoring wakelock from NonConfigurationInstanceState"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    .end local v2    # "retained":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 564
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 566
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 567
    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 569
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 571
    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 6
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 875
    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x6

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 900
    :cond_0
    return v0

    .line 877
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 879
    .local v1, "password":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 880
    return v3

    .line 884
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 888
    iget-object v4, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v4, v0}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 889
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->setBackFunctionality(Z)V

    .line 891
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x4

    if-lt v4, v5, :cond_3

    .line 892
    new-instance v4, Lcom/android/settings/CryptKeeper$DecryptTask;

    invoke-direct {v4, p0, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;-><init>(Lcom/android/settings/CryptKeeper;Lcom/android/settings/CryptKeeper$1;)V

    new-array v2, v3, [Ljava/lang/String;

    aput-object v1, v2, v0

    invoke-virtual {v4, v2}, Lcom/android/settings/CryptKeeper$DecryptTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 895
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mPasswordEntry:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->fakeUnlockAttempt(Landroid/view/View;)V

    .line 898
    :goto_1
    return v3
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .line 1005
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1006
    const/4 v0, 0x0

    return v0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 556
    new-instance v0, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;-><init>(Landroid/os/PowerManager$WakeLock;)V

    .line 557
    .local v0, "state":Lcom/android/settings/CryptKeeper$NonConfigurationInstanceState;
    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 559
    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 446
    const-string v0, "cooldown"

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper;->mCooldown:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 447
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 456
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 457
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->setupUi()V

    .line 458
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 544
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 545
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .line 1022
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1023
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .line 1011
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->delayAudioNotification()V

    .line 1012
    const/4 v0, 0x0

    return v0
.end method
