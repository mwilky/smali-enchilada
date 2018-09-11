.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;
.super Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;
.source "SetupFingerprintEnrollFindSensor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;-><init>()V

    return-void
.end method


# virtual methods
.method protected getContentView()I
    .locals 1

    .line 76
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    const v0, 0x7f0d011d

    .local v0, "layoutId":I
    :goto_0
    goto :goto_1

    .line 78
    .end local v0    # "layoutId":I
    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 79
    const v0, 0x7f0d011b

    goto :goto_0

    .line 81
    :cond_1
    const v0, 0x7f0d0096

    .line 83
    .restart local v0    # "layoutId":I
    :goto_1
    return v0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollEnrolling;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 107
    iget v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 108
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 110
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 111
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 120
    const/16 v0, 0xf7

    return v0
.end method

.method protected initViews()V
    .locals 3

    .line 96
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->initViews()V

    .line 98
    const v0, 0x7f0a0170

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 99
    .local v0, "description":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602b0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 100
    return-void
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 91
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 92
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 55
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 61
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 64
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->functionalTermsButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060358

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 67
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->functionalTermsButton:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060356

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 70
    :goto_1
    return-void
.end method

.method protected onSkipButtonClick()V
    .locals 2

    .line 115
    new-instance v0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor$SkipFingerprintDialog;->show(Landroid/app/FragmentManager;)V

    .line 116
    return-void
.end method
