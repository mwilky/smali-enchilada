.class public Lcom/android/settings/SetupWizardUtils;
.super Ljava/lang/Object;
.source "SetupWizardUtils.java"


# static fields
.field static final SYSTEM_PROP_SETUPWIZARD_THEME:Ljava/lang/String; = "setupwizard.theme"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V
    .locals 3

    const-string v0, "theme"

    const-string v1, "theme"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "useImmersiveMode"

    const-string v1, "useImmersiveMode"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-void
.end method

.method public static getOxygenSettingTheme()I
    .locals 1

    const v0, 0x7f130433

    return v0
.end method

.method public static getOxygenTheme(Landroid/content/Intent;)I
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130439

    return v0

    :cond_0
    const v0, 0x7f130438

    return v0
.end method

.method public static getSettingTheme()I
    .locals 1

    const v0, 0x7f130435

    return v0
.end method

.method public static getTheme(Landroid/content/Intent;)I
    .locals 2

    const-string v0, "theme"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "setupwizard.theme"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x7f13043a

    return v1

    :cond_1
    const v1, 0x7f130437

    return v1
.end method

.method public static getTransparentTheme(Landroid/content/Intent;)I
    .locals 3

    invoke-static {p0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result v0

    const v1, 0x7f1300c9

    const v2, 0x7f1300cd

    if-ne v0, v2, :cond_0

    const v1, 0x7f1300d0

    goto :goto_0

    :cond_0
    const v2, 0x7f1300ce

    if-ne v0, v2, :cond_1

    const v1, 0x7f1300cf

    goto :goto_0

    :cond_1
    const v2, 0x7f1300c7

    if-ne v0, v2, :cond_2

    const v1, 0x7f1300ca

    goto :goto_0

    :cond_2
    const v2, 0x7f1300c6

    if-ne v0, v2, :cond_3

    const v1, 0x7f130338

    goto :goto_0

    :cond_3
    const v2, 0x7f1300c5

    if-ne v0, v2, :cond_4

    const v1, 0x7f130339

    :cond_4
    :goto_0
    return v1
.end method
