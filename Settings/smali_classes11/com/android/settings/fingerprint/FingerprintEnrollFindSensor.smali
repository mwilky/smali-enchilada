.class public Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFindSensor.java"


# static fields
.field private static final CONFIRM_REQUEST:I = 0x1

.field private static final ENROLLING:I = 0x2

.field public static final EXTRA_KEY_LAUNCHED_CONFIRM:Ljava/lang/String; = "launched_confirm_lock"

.field protected static final KEY_FINGERPRINT_FUNCTIONAL_TERMS_TYPE:I = 0x8

.field protected static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field protected static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field protected static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"


# instance fields
.field protected functionalTermsButton:Landroid/widget/TextView;

.field private mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

.field private mCanProceedToEnrolling:Z

.field private mLaunchedConfirmLock:Z

.field private mNextClicked:Z

.field private mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mCanProceedToEnrolling:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    .line 36
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;
    .param p1, "x1"    # Z

    .line 36
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    .line 36
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    .line 36
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling()V

    return-void
.end method

.method private launchConfirmLock()V
    .locals 12

    .line 253
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v10

    .line 254
    .local v10, "challenge":J
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    .line 255
    .local v1, "helper":Lcom/android/settings/password/ChooseLockSettingsHelper;
    const/4 v0, 0x0

    .line 256
    .local v0, "launchedConfirmationActivity":Z
    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    const v3, 0x7f120f99

    const/16 v4, -0x2710

    if-ne v2, v4, :cond_0

    .line 257
    const/4 v2, 0x1

    .line 258
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 257
    move-wide v6, v10

    invoke-virtual/range {v1 .. v7}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;J)Z

    move-result v0

    goto :goto_0

    .line 261
    :cond_0
    const/4 v4, 0x1

    .line 262
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget v9, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mUserId:I

    .line 261
    move-object v2, v1

    move v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move-wide v7, v10

    invoke-virtual/range {v2 .. v9}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;JI)Z

    move-result v0

    .line 265
    :goto_0
    if-nez v0, :cond_1

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 270
    :cond_1
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 272
    :goto_1
    return-void
.end method

.method private proceedToEnrolling()V
    .locals 3

    .line 194
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mCanProceedToEnrolling:Z

    if-nez v0, :cond_0

    .line 195
    return-void

    .line 197
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mCanProceedToEnrolling:Z

    .line 200
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 203
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 207
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    .line 208
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "needJumpToFingerprintSettings"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startActivityForResult(Landroid/content/Intent;I)V

    .line 211
    const v1, 0x7f010029

    const v2, 0x7f010028

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 212
    return-void
.end method

.method private startLookingForFingerprint()V
    .locals 3

    .line 119
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    return-void

    .line 122
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "sidecar"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 124
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-nez v0, :cond_1

    .line 125
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    const-string v2, "sidecar"

    .line 127
    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->setListener(Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;)V

    .line 150
    return-void
.end method


# virtual methods
.method protected applyActionBarTitle()I
    .locals 1

    .line 283
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const v0, 0x7f120b0f

    return v0

    .line 286
    :cond_0
    const v0, 0x7f120f80

    return v0
.end method

.method protected getContentView()I
    .locals 1

    .line 99
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 100
    const v0, 0x7f0d011d

    .local v0, "layoutId":I
    :goto_0
    goto :goto_1

    .line 101
    .end local v0    # "layoutId":I
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 102
    const v0, 0x7f0d011b

    goto :goto_0

    .line 104
    :cond_1
    const v0, 0x7f0d0096

    .line 106
    .restart local v0    # "layoutId":I
    :goto_1
    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 276
    const/16 v0, 0xf1

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 4
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 216
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 217
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 218
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 219
    const v0, 0x7f01004e

    const v1, 0x7f01004f

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->overridePendingTransition(II)V

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 221
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    goto :goto_1

    .line 223
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 225
    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_6

    .line 226
    if-ne p2, v0, :cond_2

    .line 227
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 229
    :cond_2
    if-ne p2, v1, :cond_3

    .line 230
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 232
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_4

    .line 233
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setResult(I)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_1

    .line 236
    :cond_4
    const-class v0, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 237
    .local v0, "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 238
    .local v1, "enrolled":I
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 240
    .local v2, "max":I
    if-lt v1, v2, :cond_5

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    goto :goto_0

    .line 244
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 246
    .end local v0    # "fpm":Landroid/hardware/fingerprint/FingerprintManager;
    .end local v1    # "enrolled":I
    .end local v2    # "max":I
    :goto_0
    goto :goto_1

    .line 248
    :cond_6
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 250
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->getContentView()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setContentView(I)V

    .line 63
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const v0, 0x7f120b0f

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    goto :goto_0

    .line 66
    :cond_0
    const v0, 0x7f120f80

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->setHeaderText(I)V

    .line 68
    :goto_0
    if-eqz p1, :cond_1

    .line 69
    const-string v0, "launched_confirm_lock"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    .line 70
    const-string v0, "hw_auth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    if-nez v0, :cond_2

    .line 74
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->launchConfirmLock()V

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-eqz v0, :cond_3

    .line 76
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V

    .line 78
    :cond_3
    :goto_1
    const v0, 0x7f0a01dd

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    .line 81
    const v0, 0x7f0a01f7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->functionalTermsButton:Landroid/widget/TextView;

    .line 82
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->functionalTermsButton:Landroid/widget/TextView;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 163
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onDestroy()V

    .line 165
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->stopAnimation()V

    .line 168
    :cond_0
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 1

    .line 180
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    if-nez v0, :cond_0

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->finish()V

    .line 182
    return-void

    .line 185
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mNextClicked:Z

    .line 186
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mSidecar:Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-nez v0, :cond_2

    .line 187
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->proceedToEnrolling()V

    .line 189
    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 294
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mCanProceedToEnrolling:Z

    .line 296
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "launched_confirm_lock"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mLaunchedConfirmLock:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 174
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 175
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStart()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->startAnimation()V

    .line 115
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 154
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onStop()V

    .line 156
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->mAnimation:Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;

    invoke-interface {v0}, Lcom/android/settings/fingerprint/FingerprintFindSensorAnimation;->pauseAnimation()V

    .line 159
    :cond_0
    return-void
.end method
