.class public Lcom/android/settings/SetupRedactionInterstitial;
.super Lcom/android/settings/notification/RedactionInterstitial;
.source "SetupRedactionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/notification/RedactionInterstitial;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 3
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "userId"    # I

    .line 83
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/SetupRedactionInterstitial;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, ":settings:show_fragment_title_resid"

    .line 85
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 86
    const v2, 0x7f12086e

    goto :goto_0

    .line 87
    :cond_0
    const v2, 0x7f12086d

    .line 84
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    .line 88
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 83
    return-object v0
.end method

.method public static setEnabled(Landroid/content/Context;Z)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "enabled"    # Z

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 49
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/android/settings/SetupRedactionInterstitial;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v1, "componentName":Landroid/content/ComponentName;
    nop

    .line 52
    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 53
    move v3, v2

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    .line 50
    :goto_0
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 55
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 94
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/notification/RedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 95
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;

    .line 96
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 97
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 102
    const-class v0, Lcom/android/settings/SetupRedactionInterstitial$SetupRedactionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .param p1, "theme"    # Landroid/content/res/Resources$Theme;
    .param p2, "resid"    # I
    .param p3, "first"    # Z

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 78
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/notification/RedactionInterstitial;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 79
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/notification/RedactionInterstitial;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 66
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SetupRedactionInterstitial;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 70
    :goto_0
    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Lcom/android/settings/SetupRedactionInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 71
    .local v0, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 72
    return-void
.end method
