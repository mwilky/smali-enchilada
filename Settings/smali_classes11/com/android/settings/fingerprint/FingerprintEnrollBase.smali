.class public abstract Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.super Lcom/android/settings/core/InstrumentedActivity;
.source "FingerprintEnrollBase.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final RESULT_FINISHED:I = 0x1

.field static final RESULT_SKIP:I = 0x2

.field static final RESULT_TIMEOUT:I = 0x3


# instance fields
.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedActivity;-><init>()V

    return-void
.end method

.method private needSetTransparentStatusBar()Z
    .locals 1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private needSetWhiteStatusBar()Z
    .locals 1

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setAppropriateStatusBar()V
    .locals 4

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->isSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->needSetWhiteStatusBar()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    .line 176
    .local v0, "setLigthStatusBar":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 177
    const/16 v1, 0x2500

    .local v1, "systemUiVisibility":I
    goto :goto_1

    .line 182
    .end local v1    # "systemUiVisibility":I
    :cond_1
    const/16 v1, 0x500

    .line 186
    .restart local v1    # "systemUiVisibility":I
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->needSetTransparentStatusBar()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 191
    :cond_2
    return-void
.end method


# virtual methods
.method protected applyActionBarTitle()I
    .locals 1

    .line 193
    const/4 v0, -0x1

    return v0
.end method

.method protected getEnrollingIntent()Landroid/content/Intent;
    .locals 3

    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 148
    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 149
    iget v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_0

    .line 150
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    :cond_0
    return-object v0
.end method

.method protected getLayout()Lcom/android/setupwizardlib/GlifLayout;
    .locals 1

    .line 111
    const v0, 0x7f0a04a7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/setupwizardlib/GlifLayout;

    return-object v0
.end method

.method protected getNextButton()Landroid/widget/Button;
    .locals 1

    .line 132
    const v0, 0x7f0a0338

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    return-object v0
.end method

.method protected initViews()V
    .locals 1

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 105
    .local v0, "nextButton":Landroid/widget/Button;
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    :cond_0
    return-void
.end method

.method protected isSetupWizard()Z
    .locals 1

    .line 157
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onNextButtonClick()V

    .line 140
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 61
    .local v0, "actionBar":Landroid/app/ActionBar;
    if-eqz v0, :cond_1

    .line 63
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->applyActionBarTitle()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->applyActionBarTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(I)V

    goto :goto_0

    .line 67
    :cond_0
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setAppropriateStatusBar()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "hw_auth_token"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 75
    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    if-nez v1, :cond_2

    .line 76
    const-string v1, "hw_auth_token"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    .line 79
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mUserId:I

    .line 80
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 0

    .line 143
    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 96
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onPostCreate(Landroid/os/Bundle;)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->initViews()V

    .line 98
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 91
    const-string v0, "hw_auth_token"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->mToken:[B

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 92
    return-void
.end method

.method protected setHeaderText(I)V
    .locals 1
    .param p1, "resId"    # I

    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setHeaderText(IZ)V

    .line 129
    return-void
.end method

.method protected setHeaderText(IZ)V
    .locals 4
    .param p1, "resId"    # I
    .param p2, "force"    # Z

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/setupwizardlib/GlifLayout;->getHeaderTextView()Landroid/widget/TextView;

    move-result-object v0

    .line 116
    .local v0, "layoutTitle":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 117
    .local v1, "previousTitle":Ljava/lang/CharSequence;
    invoke-virtual {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 118
    .local v2, "title":Ljava/lang/CharSequence;
    if-ne v1, v2, :cond_0

    if-eqz p2, :cond_2

    .line 119
    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 120
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAccessibilityLiveRegion(I)V

    .line 122
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->getLayout()Lcom/android/setupwizardlib/GlifLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/setupwizardlib/GlifLayout;->setHeaderText(Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 125
    :cond_2
    return-void
.end method
