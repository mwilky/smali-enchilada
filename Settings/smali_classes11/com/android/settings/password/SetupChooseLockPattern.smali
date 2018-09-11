.class public Lcom/android/settings/password/SetupChooseLockPattern;
.super Lcom/android/settings/password/ChooseLockPattern;
.source "SetupChooseLockPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockPattern;-><init>()V

    return-void
.end method

.method public static modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "chooseLockPatternIntent"    # Landroid/content/Intent;

    .line 52
    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern;

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 53
    return-object p1
.end method


# virtual methods
.method getFragmentClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "+",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 90
    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 58
    const-class v0, Lcom/android/settings/password/SetupChooseLockPattern$SetupChooseLockPatternFragment;

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

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/SetupWizardUtils;->getTheme(Landroid/content/Intent;)I

    move-result p2

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockPattern;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 65
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockPattern;->onCreate(Landroid/os/Bundle;)V

    .line 72
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x2000

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 80
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockPattern;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "for_fingerprint"

    .line 81
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 82
    .local v0, "forFingerprint":Z
    if-eqz v0, :cond_1

    const v2, 0x7f12088e

    goto :goto_1

    .line 83
    :cond_1
    const v2, 0x7f120892

    .line 82
    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/settings/password/SetupChooseLockPattern;->setTitle(I)V

    .line 84
    const v2, 0x7f0a012d

    invoke-virtual {p0, v2}, Lcom/android/settings/password/SetupChooseLockPattern;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 85
    .local v2, "layout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 86
    return-void
.end method
