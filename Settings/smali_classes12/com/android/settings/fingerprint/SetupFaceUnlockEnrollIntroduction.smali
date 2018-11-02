.class public Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFaceUnlockEnrollIntroduction.java"


# static fields
.field private static final FACE_RESULT_FAIL:I = 0x1

.field private static final FACE_RESULT_NOT_FOUND:I = 0x2

.field private static final FACE_RESULT_OK:I = 0x0

.field private static final KEY_LOCK_SCREEN_PRESENT:Ljava/lang/String; = "wasLockScreenPresent"

.field private static final TAG:Ljava/lang/String; = "SetupFaceUnlockEnrollIntroduction"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z

.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    new-instance v0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;-><init>(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    return v0
.end method

.method private bindFaceUnlockService()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v1, "SetupFaceUnlockEnrollIntroduction"

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupFaceUnlockEnrollIntroduction"

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    if-nez p1, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p1, v0

    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const-string v1, ":settings:password_quality"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-object p1
.end method

.method private isFaceAdded()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v2, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    move v0, v2

    const-string v2, "SetupFaceUnlockEnrollIntroduction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Start check face state:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SetupFaceUnlockEnrollIntroduction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start check face State RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method private launchFaceUnlock()V
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getSetupFaceUnlockIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    const v1, 0x7f01003f

    const v2, 0x7f010040

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method public checkIfNeedPassword()Z
    .locals 3

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    nop

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    const/high16 v2, 0x10000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x20000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x30000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x40000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x50000

    if-eq v1, v2, :cond_0

    const/high16 v2, 0x60000

    if-eq v1, v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/android/settings/password/StorageManagerWrapper;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "lockscreen.password_type"

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "show_options_button"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 6

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    const v0, 0x7f0a0183

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120fbf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f120d13

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f120d12

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v2, 0x7f120afe

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setHeaderText(I)V

    const v2, 0x7f120afd

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v2, 0x7f120aff

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    const v2, 0x7f0a01ec

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v3, 0x7f120fbb

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    const v3, 0x7f0a0211

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06035a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060358

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1
    new-instance v4, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$2;-><init>(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected isSetupWizard()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected launchChooseLock()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "for_fingerprint"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget v3, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    const/4 v3, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFromSetup:Z

    const v1, 0x7f010040

    const v2, 0x7f01003f

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v4, :cond_1

    invoke-direct {p0, p3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_a

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    :goto_1
    goto/16 :goto_4

    :cond_1
    const/4 v4, 0x4

    const/4 v5, 0x6

    if-ne p1, v4, :cond_3

    if-eqz p2, :cond_3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_2

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_2
    invoke-virtual {p0, v0, v5}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_4

    :cond_3
    const/4 v4, 0x7

    if-ne p1, v4, :cond_4

    if-ne p2, v0, :cond_4

    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mToken:[B

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    goto :goto_4

    :cond_4
    if-ne p1, v5, :cond_a

    const/16 v4, 0xb

    if-eq p2, v3, :cond_5

    if-eq p2, v4, :cond_5

    if-eq p2, v0, :cond_5

    const/4 v0, -0x1

    if-ne p2, v0, :cond_a

    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    goto :goto_4

    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    goto :goto_4

    :cond_8
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    :cond_a
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.SetupFingerprintEnrollIntroduction"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    const v2, 0x7f01003f

    const v3, 0x7f010040

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    :cond_0
    const-string v0, "wasLockScreenPresent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    :goto_0
    const v0, 0x7f0d0164

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setContentView(I)V

    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->unbindFaceUnlockService()V

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->bindFaceUnlockService()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "wasLockScreenPresent"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method
