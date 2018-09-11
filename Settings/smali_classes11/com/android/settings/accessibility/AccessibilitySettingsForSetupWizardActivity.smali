.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;
.super Lcom/android/settings/SettingsActivity;
.source "AccessibilitySettingsForSetupWizardActivity.java"


# static fields
.field private static final SAVE_KEY_TITLE:Ljava/lang/String; = "activity_title"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 39
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 47
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 48
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;

    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method public onNavigateUp()Z
    .locals 2

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->onBackPressed()V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 74
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 4
    .param p1, "caller"    # Landroid/support/v14/preference/PreferenceFragment;
    .param p2, "pref"    # Landroid/support/v7/preference/Preference;

    .line 81
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 82
    .local v0, "args":Landroid/os/Bundle;
    if-nez v0, :cond_0

    .line 83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    move-object v0, v1

    .line 85
    :cond_0
    const-string v1, "help_uri_resource"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 86
    const-string v1, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 87
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 88
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 89
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 90
    instance-of v3, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v3, :cond_1

    .line 91
    move-object v2, p1

    check-cast v2, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v2}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    goto :goto_0

    .line 92
    :cond_1
    nop

    .line 90
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 93
    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 94
    const/4 v1, 0x1

    return v1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 59
    const-string v0, "activity_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 60
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedState"    # Landroid/os/Bundle;

    .line 52
    const-string v0, "activity_title"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 54
    return-void
.end method
