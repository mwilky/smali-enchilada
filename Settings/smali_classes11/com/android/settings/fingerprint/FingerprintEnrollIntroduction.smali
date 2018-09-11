.class public Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollIntroduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/setupwizardlib/span/LinkSpan$OnClickListener;


# static fields
.field protected static final CHOOSE_LOCK_GENERIC_REQUEST:I = 0x1

.field protected static final CHOOSE_LOCK_GENERIC_REQUEST_BY_FACEUNLOCK:I = 0x7

.field protected static final FACE_UNLOCK_SETUP_REQUEST:I = 0x4

.field protected static final FINGERPRINT_FIND_SENSOR_REQUEST:I = 0x2

.field protected static final GO_TO_FACE_UNLOCK_PAGE:I = 0x5

.field protected static final KEY_FACEUNLOCK_FUNCTIONAL_TERMS_TYPE:I = 0xa

.field protected static final KEY_FINGERPRINT_FUNCTIONAL_TERMS_TYPE:I = 0x8

.field protected static final KEY_FROM_SETTINGS:Ljava/lang/String; = "key_from_settings"

.field protected static final KEY_NOTICES_TYPE:Ljava/lang/String; = "op_legal_notices_type"

.field protected static final LEARN_MORE_REQUEST:I = 0x3

.field protected static final OPLEGAL_NOTICES_ACTION:Ljava/lang/String; = "android.oem.intent.action.OP_LEGAL"

.field private static final TAG:Ljava/lang/String; = "FingerprintEnrollIntroduction"


# instance fields
.field private mErrorText:Landroid/widget/TextView;

.field private mFingerprintUnlockDisabledByAdmin:Z

.field protected mFromSetup:Z

.field private mHandler:Landroid/os/Handler;

.field protected mHasPassword:Z

.field private mNextButtonClicked:Z

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 48
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mNextButtonClicked:Z

    .line 61
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHandler:Landroid/os/Handler;

    .line 66
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFromSetup:Z

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
    .param p1, "x1"    # Z

    .line 48
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mNextButtonClicked:Z

    return p1
.end method

.method private launchChooseLock()V
    .locals 6

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getChooseLockIntent()Landroid/content/Intent;

    move-result-object v0

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    .line 188
    .local v1, "challenge":J
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 190
    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 191
    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 192
    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 193
    const-string v3, "for_fingerprint"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 194
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v5, -0x2710

    if-eq v3, v5, :cond_0

    .line 195
    const-string v3, "android.intent.extra.USER_ID"

    iget v5, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 197
    :cond_0
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 198
    return-void
.end method

.method private launchFindSensor([B)V
    .locals 3
    .param p1, "token"    # [B

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getFindSensorIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 203
    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 205
    :cond_0
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    .line 206
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    :cond_1
    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 209
    return-void
.end method

.method private updatePasswordQuality()V
    .locals 3

    .line 151
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    .line 152
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getActivePasswordQuality(I)I

    move-result v0

    .line 153
    .local v0, "passwordQuality":I
    if-eqz v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    .line 154
    return-void
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 2

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 216
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 254
    const/16 v0, 0xf3

    return v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 158
    const v0, 0x7f0a01da

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 2

    .line 264
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 265
    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 266
    .local v0, "description":Landroid/widget/TextView;
    iget-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    if-eqz v1, :cond_0

    .line 267
    const v1, 0x7f120f89

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 270
    :cond_0
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 221
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 222
    .local v1, "isResultFinished":Z
    :goto_0
    const/4 v2, 0x2

    if-ne p1, v2, :cond_3

    .line 223
    if-nez v1, :cond_1

    if-ne p2, v2, :cond_5

    .line 224
    :cond_1
    if-eqz v1, :cond_2

    const/4 v2, -0x1

    nop

    :cond_2
    move v0, v2

    .line 225
    .local v0, "result":I
    invoke-virtual {p0, v0, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 227
    return-void

    .line 229
    .end local v0    # "result":I
    :cond_3
    if-ne p1, v0, :cond_4

    .line 230
    if-eqz v1, :cond_5

    .line 231
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 232
    const-string v0, "hw_auth_token"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    .line 234
    .local v0, "token":[B
    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    .line 235
    return-void

    .line 237
    .end local v0    # "token":[B
    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    .line 238
    const v0, 0x7f01004c

    const v2, 0x7f01004d

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 240
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onActivityResult(IILandroid/content/Intent;)V

    .line 241
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 0

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->finish()V

    .line 259
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .line 245
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01d7

    if-ne v0, v1, :cond_0

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCancelButtonClick()V

    goto :goto_0

    .line 248
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    .line 250
    :goto_0
    return-void
.end method

.method public onClick(Lcom/android/setupwizardlib/span/LinkSpan;)V
    .locals 6
    .param p1, "span"    # Lcom/android/setupwizardlib/span/LinkSpan;

    .line 275
    const-string v0, "url"

    invoke-virtual {p1}, Lcom/android/setupwizardlib/span/LinkSpan;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    const v0, 0x7f120717

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 277
    .local v0, "url":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/HelpUtils;->getHelpIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 278
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_0

    .line 279
    const-string v2, "FingerprintEnrollIntroduction"

    const-string v3, "Null help intent."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 285
    :cond_0
    const/4 v2, 0x3

    :try_start_0
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    goto :goto_0

    .line 286
    :catch_0
    move-exception v2

    .line 287
    .local v2, "e":Landroid/content/ActivityNotFoundException;
    const-string v3, "FingerprintEnrollIntroduction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Activity was not found for intent, "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    .end local v0    # "url":Ljava/lang/String;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "e":Landroid/content/ActivityNotFoundException;
    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    .line 80
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    const/16 v1, 0x20

    invoke-static {p0, v1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfKeyguardFeaturesDisabled(Landroid/content/Context;II)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    .line 83
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 84
    const v0, 0x7f0d0163

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    goto :goto_1

    .line 86
    :cond_1
    const v0, 0x7f0d009d

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setContentView(I)V

    .line 88
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mFingerprintUnlockDisabledByAdmin:Z

    const v2, 0x7f120f8a

    if-eqz v0, :cond_2

    .line 89
    const v0, 0x7f120f8b

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    goto :goto_2

    .line 92
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->setHeaderText(I)V

    .line 95
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 96
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_3

    .line 98
    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 99
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setTitle(I)V

    .line 102
    :cond_3
    const v1, 0x7f0a01d7

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 103
    .local v1, "cancelButton":Landroid/widget/Button;
    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v2, 0x7f0a01f7

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 105
    .local v2, "functionalTermsButton":Landroid/widget/TextView;
    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$1;

    invoke-direct {v3, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    const v3, 0x7f0a01be

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    .line 117
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserManager:Landroid/os/UserManager;

    .line 120
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 4

    .line 164
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mNextButtonClicked:Z

    if-eqz v0, :cond_0

    .line 165
    return-void

    .line 167
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mNextButtonClicked:Z

    .line 169
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHasPassword:Z

    if-nez v0, :cond_1

    .line 171
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchChooseLock()V

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->launchFindSensor([B)V

    .line 177
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$2;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 183
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 124
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    .line 126
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->updatePasswordQuality()V

    .line 128
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    .line 129
    .local v0, "fingerprintManager":Landroid/hardware/fingerprint/FingerprintManager;
    const/4 v1, 0x0

    .line 130
    .local v1, "errorMsg":I
    if-eqz v0, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0046

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    .line 133
    .local v2, "max":I
    iget v3, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mUserId:I

    .line 134
    invoke-virtual {v0, v3}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 135
    .local v3, "numEnrolledFingerprints":I
    if-lt v3, v2, :cond_0

    .line 136
    const v1, 0x7f120664

    .line 138
    .end local v2    # "max":I
    .end local v3    # "numEnrolledFingerprints":I
    :cond_0
    goto :goto_0

    .line 139
    :cond_1
    const v1, 0x7f120665

    .line 141
    :goto_0
    if-nez v1, :cond_2

    .line 142
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_1

    .line 145
    :cond_2
    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 148
    :goto_1
    return-void
.end method
