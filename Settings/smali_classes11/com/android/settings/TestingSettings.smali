.class public Lcom/android/settings/TestingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 43
    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v0, 0x7f1600c5

    invoke-virtual {p0, v0}, Lcom/android/settings/TestingSettings;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 34
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 35
    const-string v1, "radio_info_settings"

    .line 36
    invoke-virtual {p0, v1}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceScreen;

    .line 37
    .local v1, "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 39
    .end local v1    # "preferenceScreen":Landroid/support/v7/preference/PreferenceScreen;
    :cond_0
    return-void
.end method
