.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;
.super Lcom/android/settings/fingerprint/FingerprintEnrollFinish;
.source "SetupFingerprintEnrollFinish.java"


# static fields
.field private static final FACE_RESULT_FAIL:I = 0x1

.field private static final FACE_RESULT_NOT_FOUND:I = 0x2

.field private static final FACE_RESULT_OK:I = 0x0

.field protected static final FACE_UNLOCK_SETUP_REQUEST:I = 0x4

.field private static final TAG:Ljava/lang/String; = "SetupFingerprintEnrollFinish"


# instance fields
.field private mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

.field private mFaceUnlockConnection:Landroid/content/ServiceConnection;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;-><init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;
    .param p1, "x1"    # Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    .line 48
    iput-object p1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method private bindFaceUnlockService()V
    .locals 3

    .line 71
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 72
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 74
    const-string v1, "SetupFingerprintEnrollFinish"

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    .end local v0    # "intent":Landroid/content/Intent;
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "SetupFingerprintEnrollFinish"

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private isFaceAdded()Z
    .locals 6

    .line 87
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 88
    return v1

    .line 90
    :cond_0
    const/4 v0, 0x2

    .line 92
    .local v0, "addState":I
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v2, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    move v0, v2

    .line 93
    const-string v2, "SetupFingerprintEnrollFinish"

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

    .line 96
    goto :goto_0

    .line 94
    :catch_0
    move-exception v2

    .line 95
    .local v2, "re":Landroid/os/RemoteException;
    const-string v3, "SetupFingerprintEnrollFinish"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Start check face State RemoteException:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    .end local v2    # "re":Landroid/os/RemoteException;
    :goto_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method private unbindFaceUnlockService()V
    .locals 2

    .line 81
    const-string v0, "SetupFingerprintEnrollFinish"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->unbindService(Landroid/content/ServiceConnection;)V

    .line 83
    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 128
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 130
    iget v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 131
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 133
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 134
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 221
    const/16 v0, 0xf8

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 214
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->initViews()V

    .line 215
    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 216
    .local v0, "nextButton":Landroid/widget/Button;
    const v1, 0x7f120984

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 217
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 172
    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 173
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 174
    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_6

    .line 175
    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    goto :goto_3

    .line 179
    :cond_1
    if-eq p2, v1, :cond_4

    if-eq p2, v3, :cond_4

    if-ne p2, v2, :cond_2

    goto :goto_0

    .line 200
    :cond_2
    if-ne p2, v2, :cond_3

    goto :goto_3

    .line 203
    :cond_3
    goto :goto_3

    .line 181
    :cond_4
    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 183
    .local v0, "intent":Landroid/content/Intent;
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 184
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.provision"

    const-string v4, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v1, "componentName":Landroid/content/ComponentName;
    goto :goto_1

    .line 188
    .end local v1    # "componentName":Landroid/content/ComponentName;
    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.provision"

    const-string v4, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    .restart local v1    # "componentName":Landroid/content/ComponentName;
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 193
    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    .line 194
    const v2, 0x7f01003f

    const v4, 0x7f010040

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_2

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 197
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    .line 199
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_2
    nop

    .line 208
    :cond_6
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onActivityResult(IILandroid/content/Intent;)V

    .line 209
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 141
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 142
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 114
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 124
    :goto_0
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 4

    .line 146
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->isFaceAdded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    goto :goto_1

    .line 150
    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.SetupFaceUnlockEnrollIntroduction"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .local v1, "componentName":Landroid/content/ComponentName;
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->startActivityForResult(Landroid/content/Intent;I)V

    .line 158
    const v2, 0x7f01003f

    const v3, 0x7f010040

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    goto :goto_0

    .line 159
    :catch_0
    move-exception v0

    .line 160
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    .line 162
    .end local v0    # "e":Landroid/content/ActivityNotFoundException;
    :goto_0
    goto :goto_1

    .line 164
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    .line 168
    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 107
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->unbindFaceUnlockService()V

    .line 108
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onPause()V

    .line 109
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 101
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onResume()V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->bindFaceUnlockService()V

    .line 103
    return-void
.end method
