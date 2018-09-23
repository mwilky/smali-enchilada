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

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;-><init>()V

    new-instance v0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish$1;-><init>(Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;)V

    iput-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$002(Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-object p1
.end method

.method private bindFaceUnlockService()V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oneplus.faceunlock"

    const-string v2, "com.oneplus.faceunlock.FaceSettingService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string v1, "SetupFingerprintEnrollFinish"

    const-string v2, "Start bind oneplus face unlockservice"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SetupFingerprintEnrollFinish"

    const-string v2, "Bind oneplus face unlockservice exception"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private isFaceAdded()Z
    .locals 6

    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceSettingService:Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    invoke-interface {v2, v1}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;->checkState(I)I

    move-result v2

    move v0, v2

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

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "SetupFingerprintEnrollFinish"

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

.method private unbindFaceUnlockService()V
    .locals 2

    const-string v0, "SetupFingerprintEnrollFinish"

    const-string v1, "Start unbind oneplus face unlockservice"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mFaceUnlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method


# virtual methods
.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    iget v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf8

    return v0
.end method

.method protected initViews()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->initViews()V

    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f120984

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x2

    const/16 v2, 0xb

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    if-eq p2, v3, :cond_0

    if-ne p2, v2, :cond_6

    :cond_0
    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    goto :goto_3

    :cond_1
    if-eq p2, v1, :cond_4

    if-eq p2, v3, :cond_4

    if-ne p2, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p2, v2, :cond_3

    goto :goto_3

    :cond_3
    goto :goto_3

    :cond_4
    :goto_0
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.provision"

    const-string v4, "com.oneplus.provision.UserSettingSuccess"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.provision"

    const-string v4, "com.oneplus.provision.GesturesActivity"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    const v2, 0x7f01003f

    const v4, 0x7f010040

    invoke-virtual {p0, v2, v4}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    :goto_2
    nop

    :cond_6
    :goto_3
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 4

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->isFaceAdded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuestMode()Z

    move-result v0

    if-nez v0, :cond_1

    :try_start_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.settings"

    const-string v3, "com.android.settings.fingerprint.SetupFaceUnlockEnrollIntroduction"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->startActivityForResult(Landroid/content/Intent;I)V

    const v2, 0x7f01003f

    const v3, 0x7f010040

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->overridePendingTransition(II)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->finish()V

    :goto_1
    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->unbindFaceUnlockService()V

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFinish;->bindFaceUnlockService()V

    return-void
.end method
