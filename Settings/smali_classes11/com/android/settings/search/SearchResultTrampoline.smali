.class public Lcom/android/settings/search/SearchResultTrampoline;
.super Landroid/app/Activity;
.source "SearchResultTrampoline.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 36
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    :try_start_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 42
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->getCallingActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/settings/search/SearchFeatureProvider;->verifyLaunchSearchResultPageCaller(Landroid/content/Context;Landroid/content/ComponentName;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    nop

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 60
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 61
    .local v1, "settingKey":Ljava/lang/String;
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 62
    .local v2, "args":Landroid/os/Bundle;
    const-string v3, ":settings:fragment_args_key"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    const-string v3, ":settings:show_fragment_args"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 66
    const-class v3, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x2000000

    .line 67
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/settings/search/SearchResultTrampoline;->startActivity(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->finish()V

    .line 72
    return-void

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "settingKey":Ljava/lang/String;
    .end local v2    # "args":Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->finish()V

    .line 51
    return-void

    .line 44
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 45
    .local v0, "e":Ljava/lang/SecurityException;
    invoke-virtual {v0}, Ljava/lang/SecurityException;->printStackTrace()V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/search/SearchResultTrampoline;->finish()V

    .line 47
    return-void
.end method
