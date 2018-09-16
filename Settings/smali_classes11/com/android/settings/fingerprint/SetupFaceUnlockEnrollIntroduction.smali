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

    .line 59
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    .line 68
    new-instance v0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$1;-><init>(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 59
    iput-object p1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    return v0
.end method

.method private bindFaceUnlockService()V
    .locals 3

    .line 90
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 91
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 92
    iget-object v1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 93
    const-string v1, "SetupFaceUnlockEnrollIntroduction"

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SetupFaceUnlockEnrollIntroduction"

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;

    .line 309
    if-nez p1, :cond_0

    .line 310
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p1, v0

    .line 312
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 313
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v1, ":settings:password_quality"

    .line 315
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    .line 313
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 316
    return-object p1
.end method

.method private isFaceAdded()Z
    .locals 6

    .line 106
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 107
    return v1

    .line 109
    :cond_0
    const/4 v0, 0x2

    .line 111
    .local v0, "addState":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v2, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    move v0, v2

    .line 112
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

    .line 115
    goto :goto_0

    .line 113
    :catch_0
    move-exception v2

    .line 114
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "SetupFaceUnlockEnrollIntroduction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start check face State RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 388
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method

.method private launchChooseLock()V
    .locals 5

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 344
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    .line 345
    .local v1, "challenge":J
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 347
    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 348
    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 349
    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 350
    const-string v3, "for_fingerprint"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 351
    iget v3, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    const/16 v4, -0x2710

    if-eq v3, v4, :cond_0

    .line 352
    const-string v3, "android.intent.extra.USER_ID"

    iget v4, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 354
    :cond_0
    const/4 v3, 0x7

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 355
    return-void
.end method

.method private launchFaceUnlock()V
    .locals 3

    .line 334
    :try_start_0
    invoke-static {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockSettings;->getSetupFaceUnlockIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 335
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 336
    const v1, 0x7f01003f

    const v2, 0x7f010040

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 339
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 337
    :catch_0
    move-exception v0

    .line 340
    :goto_0
    return-void
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    .line 100
    const-string v0, "SetupFaceUnlockEnrollIntroduction"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->unbindService(Landroid/content/ServiceConnection;)V

    .line 102
    return-void
.end method


# virtual methods
.method public checkIfNeedPassword()Z
    .locals 3

    .line 174
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 176
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    nop

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 178
    .local v1, "passwordQuality":I
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

    .line 187
    const/4 v2, 0x0

    return v2

    .line 185
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    .line 132
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/password/StorageManagerWrapper;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 135
    const-string v1, "lockscreen.password_type"

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const-string v1, "show_options_button"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 140
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 141
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 393
    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 6

    .line 193
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    .line 195
    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 196
    .local v0, "description":Landroid/widget/TextView;
    const v1, 0x7f120f8c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    .line 201
    .local v1, "nextButton":Landroid/widget/Button;
    const v2, 0x7f120af7

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setHeaderText(I)V

    .line 202
    const v2, 0x7f120af6

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 204
    const v2, 0x7f120af8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 208
    const v2, 0x7f0a01d7

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 209
    .local v2, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    const v3, 0x7f120f88

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 212
    const v3, 0x7f0a01f7

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 213
    .local v3, "functionalTermsButton":Landroid/widget/TextView;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060358

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 216
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060356

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    :goto_0
    new-instance v4, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$2;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction$2;-><init>(Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 228
    return-void
.end method

.method protected isSetupWizard()Z
    .locals 1

    .line 399
    const/4 v0, 0x1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 233
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mFromSetup:Z

    .line 234
    const v1, 0x7f010040

    const v2, 0x7f01003f

    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-boolean v4, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v4, :cond_1

    .line 235
    invoke-direct {p0, p3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 237
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_b

    .line 239
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 241
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 242
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 246
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 252
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 254
    :catch_0
    move-exception v0

    .line 255
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    .line 257
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    goto/16 :goto_4

    .line 260
    :cond_1
    const/4 v4, 0x4

    const/16 v5, 0xb

    if-ne p1, v4, :cond_4

    .line 262
    if-ne p2, v0, :cond_2

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->onCancelButtonClick()V

    goto/16 :goto_4

    .line 264
    :cond_2
    if-ne p2, v5, :cond_3

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->onCancelButtonClick()V

    goto/16 :goto_4

    .line 266
    :cond_3
    goto/16 :goto_4

    .line 269
    :cond_4
    const/4 v4, 0x7

    if-ne p1, v4, :cond_5

    if-ne p2, v0, :cond_5

    .line 270
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    goto :goto_4

    .line 271
    :cond_5
    const/4 v4, 0x6

    if-ne p1, v4, :cond_b

    if-eq p2, v3, :cond_6

    if-eq p2, v5, :cond_6

    if-eq p2, v0, :cond_6

    const/4 v0, -0x1

    if-ne p2, v0, :cond_b

    .line 273
    :cond_6
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 274
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 277
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    goto :goto_2

    :cond_7
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v3, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    goto :goto_4

    .line 280
    :cond_8
    invoke-virtual {p0, v5}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setResult(I)V

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    goto :goto_4

    .line 285
    :cond_9
    :try_start_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 287
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 288
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_3

    .line 292
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_a
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 297
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 298
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 302
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_4

    .line 299
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    .line 305
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_b
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    .line 306
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 148
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 149
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    .line 373
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 374
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.SetupFingerprintEnrollIntroduction"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 378
    const/4 v2, 0x6

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 379
    const v2, 0x7f01003f

    const v3, 0x7f010040

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 383
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 380
    :catch_0
    move-exception v0

    .line 381
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->finish()V

    .line 385
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 155
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 156
    if-nez p1, :cond_0

    .line 157
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    .line 159
    :cond_0
    const-string v0, "wasLockScreenPresent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    .line 163
    :goto_0
    const v0, 0x7f0d015c

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->setContentView(I)V

    .line 165
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .line 321
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    .line 326
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->isFaceAdded()Z

    move-result v0

    if-nez v0, :cond_1

    .line 327
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->launchFaceUnlock()V

    .line 330
    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->unbindFaceUnlockService()V

    .line 127
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onPause()V

    .line 128
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 120
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onResume()V

    .line 121
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->bindFaceUnlockService()V

    .line 122
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 169
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 170
    const-string v0, "wasLockScreenPresent"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/SetupFaceUnlockEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 171
    return-void
.end method
