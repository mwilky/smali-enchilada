.class public Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;
.super Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;
.source "FingerprintSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;-><init>()V

    return-void
.end method

.method static isFingerprintEnabled(Landroid/content/Context;)Z
    .locals 3

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v1

    and-int/lit8 v2, v1, 0x20

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private static isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z
    .locals 3

    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isFingerprintEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public finish()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->setResult(I)V

    invoke-super {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    return-void
.end method

.method protected initViews()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->initViews()V

    const v0, 0x7f0a01d7

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f120f80

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    return-void
.end method
