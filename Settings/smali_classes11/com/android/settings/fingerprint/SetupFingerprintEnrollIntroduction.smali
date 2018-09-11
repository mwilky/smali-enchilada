.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# static fields
.field private static final KEY_LOCK_SCREEN_PRESENT:Ljava/lang/String; = "wasLockScreenPresent"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3
    .param p1, "data"    # Landroid/content/Intent;

    .line 215
    if-nez p1, :cond_0

    .line 216
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object p1, v0

    .line 218
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 219
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    const-string v1, ":settings:password_quality"

    .line 221
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    .line 219
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    return-object p1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 303
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    .line 87
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 89
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/android/settings/password/StorageManagerWrapper;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 90
    const-string v1, "lockscreen.password_type"

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 93
    const-string v1, "show_options_button"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 95
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 96
    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 101
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 102
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 103
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 308
    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 6

    .line 108
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    .line 110
    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 111
    .local v0, "description":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 113
    const v1, 0x7f120c8f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 117
    :cond_0
    const v1, 0x7f120f87

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 121
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v1

    .line 122
    .local v1, "nextButton":Landroid/widget/Button;
    const v2, 0x7f120f86

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 125
    const v2, 0x7f0a01d7

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 126
    .local v2, "cancelButton":Landroid/widget/Button;
    const v3, 0x7f120f84

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 129
    const v3, 0x7f0a01f7

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 130
    .local v3, "functionalTermsButton":Landroid/widget/TextView;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060358

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 133
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060356

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :goto_1
    new-instance v4, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;

    invoke-direct {v4, p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction$1;-><init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 151
    const v0, 0x7f010040

    const v1, 0x7f01003f

    const/4 v2, 0x2

    if-ne p1, v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v3, :cond_1

    .line 153
    invoke-direct {p0, p3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 155
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v2

    if-nez v2, :cond_7

    .line 157
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 159
    .local v2, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 160
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 164
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 169
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 170
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->overridePendingTransition(II)V

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 175
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_1
    goto :goto_4

    .line 178
    :cond_1
    const/4 v3, 0x5

    if-ne p1, v3, :cond_7

    const/16 v3, 0xb

    if-eq p2, v2, :cond_2

    if-ne p2, v3, :cond_7

    .line 179
    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 180
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 183
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    :goto_2
    invoke-virtual {p0, v2, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_4

    .line 186
    :cond_4
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(I)V

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_4

    .line 191
    :cond_5
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 193
    .restart local v2    # "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 194
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .restart local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_3

    .line 198
    .end local v3    # "componentName":Landroid/content/ComponentName;
    :cond_6
    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.oneplus.provision"

    const-string v5, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .restart local v3    # "componentName":Landroid/content/ComponentName;
    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 203
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->startActivity(Landroid/content/Intent;)V

    .line 204
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 208
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "componentName":Landroid/content/ComponentName;
    goto :goto_4

    .line 205
    :catch_1
    move-exception v0

    .line 206
    .restart local v0    # "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 211
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :cond_7
    :goto_4
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    .line 212
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 75
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 76
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 296
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 299
    :cond_0
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onBackPressed()V

    .line 300
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 4

    .line 240
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 243
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.SetupFaceUnlockEnrollIntroduction"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 247
    const/4 v2, 0x5

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->startActivityForResult(Landroid/content/Intent;I)V

    .line 248
    const v2, 0x7f01003f

    const v3, 0x7f010040

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 252
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    goto :goto_2

    .line 255
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 258
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    :goto_1
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_2

    .line 261
    :cond_2
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(I)V

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 288
    :goto_2
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 63
    :goto_0
    if-nez p1, :cond_1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_1

    .line 66
    :cond_1
    const-string v0, "wasLockScreenPresent"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    .line 69
    :goto_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 82
    const-string v0, "wasLockScreenPresent"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 83
    return-void
.end method
