.class public Lcom/android/settings/SetupEncryptionInterstitial;
.super Lcom/android/settings/EncryptionInterstitial;
.source "SetupEncryptionInterstitial.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/EncryptionInterstitial;-><init>()V

    return-void
.end method

.method public static createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;
    .param p1, "quality"    # I
    .param p2, "requirePasswordDefault"    # Z
    .param p3, "unlockMethodIntent"    # Landroid/content/Intent;

    .line 35
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 37
    .local v0, "startIntent":Landroid/content/Intent;
    const-class v1, Lcom/android/settings/SetupEncryptionInterstitial;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 38
    const-string v1, "extra_prefs_show_button_bar"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v1

    const-string v2, ":settings:show_fragment_title_resid"

    .line 39
    const/4 v3, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 40
    return-object v0
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 45
    new-instance v0, Landroid/content/Intent;

    invoke-super {p0}, Lcom/android/settings/EncryptionInterstitial;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 46
    .local v0, "modIntent":Landroid/content/Intent;
    const-string v1, ":settings:show_fragment"

    const-class v2, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    .line 47
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 46
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 1
    .param p1, "fragmentName"    # Ljava/lang/String;

    .line 53
    const-class v0, Lcom/android/settings/SetupEncryptionInterstitial$SetupEncryptionInterstitialFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstance"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/EncryptionInterstitial;->onCreate(Landroid/os/Bundle;)V

    .line 59
    const v0, 0x7f0a012d

    invoke-virtual {p0, v0}, Lcom/android/settings/SetupEncryptionInterstitial;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 60
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setFitsSystemWindows(Z)V

    .line 61
    return-void
.end method
