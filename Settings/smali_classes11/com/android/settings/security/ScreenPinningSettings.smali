.class public Lcom/android/settings/security/ScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final CHANGE_LOCK_METHOD_REQUEST:I = 0x2b

.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "use_screen_lock"

    sput-object v0, Lcom/android/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    .line 223
    new-instance v0, Lcom/android/settings/security/ScreenPinningSettings$2;

    invoke-direct {v0}, Lcom/android/settings/security/ScreenPinningSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/security/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/ScreenPinningSettings;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/security/ScreenPinningSettings;
    .param p1, "x1"    # Z

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result v0

    return v0
.end method

.method private getCurrentSecurityTitle()I
    .locals 3

    .line 166
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 167
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 166
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 168
    .local v0, "quality":I
    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 176
    :cond_0
    const v1, 0x7f120f1c

    return v1

    .line 171
    :cond_1
    const v1, 0x7f120f1e

    return v1

    .line 178
    :cond_2
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 179
    const v1, 0x7f120f1d

    return v1

    .line 182
    :cond_3
    :goto_0
    const v1, 0x7f120f1b

    return v1
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .line 109
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private isScreenLockUsed()Z
    .locals 5

    .line 123
    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const v3, 0x7f120f1b

    if-eq v0, v3, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 124
    .local v0, "def":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_to_app_exit_locked"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method private setLockToAppEnabled(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    .line 115
    nop

    .line 114
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 116
    if-eqz p1, :cond_0

    .line 118
    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    .line 120
    :cond_0
    return-void
.end method

.method private setScreenLockUsed(Z)Z
    .locals 5
    .param p1, "isEnabled"    # Z

    .line 129
    if-eqz p1, :cond_0

    .line 130
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 131
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    nop

    .line 132
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    .line 133
    .local v1, "passwordQuality":I
    if-nez v1, :cond_0

    .line 134
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v2, "chooseLockIntent":Landroid/content/Intent;
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 138
    const/16 v3, 0x2b

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/security/ScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 139
    const/4 v3, 0x0

    return v3

    .line 142
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v1    # "passwordQuality":I
    .end local v2    # "chooseLockIntent":Landroid/content/Intent;
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    .line 143
    const/4 v0, 0x1

    return v0
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 2
    .param p1, "isEnabled"    # Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_exit_locked"

    .line 148
    nop

    .line 147
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 149
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 87
    const v0, 0x7f120726

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x56

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 70
    .local v0, "activity":Lcom/android/settings/SettingsActivity;
    const v1, 0x7f120f1a

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 71
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 75
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 76
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 77
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 79
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_navigation_bar_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 80
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 153
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 154
    const/16 v0, 0x2b

    if-ne p1, v0, :cond_1

    .line 155
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 156
    .local v0, "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    nop

    .line 157
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 156
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 159
    .local v1, "validPassQuality":Z
    :goto_0
    invoke-direct {p0, v1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    .line 161
    iget-object v2, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 163
    .end local v0    # "lockPatternUtils":Lcom/android/internal/widget/LockPatternUtils;
    .end local v1    # "validPassQuality":Z
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 102
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 104
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 105
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 106
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0
    .param p1, "switchView"    # Landroid/widget/Switch;
    .param p2, "isChecked"    # Z

    .line 190
    invoke-direct {p0, p2}, Lcom/android/settings/security/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->updateDisplay()V

    .line 192
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    const v0, 0x102003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 95
    const v2, 0x7f0d022f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "emptyView":Landroid/view/View;
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/android/settings/security/ScreenPinningSettings;->setEmptyView(Landroid/view/View;)V

    .line 98
    return-void
.end method

.method public updateDisplay()V
    .locals 4

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 196
    .local v0, "root":Landroid/support/v7/preference/PreferenceScreen;
    if-eqz v0, :cond_0

    .line 197
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 199
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 200
    const v1, 0x7f1600b2

    invoke-virtual {p0, v1}, Lcom/android/settings/security/ScreenPinningSettings;->addPreferencesFromResource(I)V

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 203
    sget-object v1, Lcom/android/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    .line 204
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    new-instance v2, Lcom/android/settings/security/ScreenPinningSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/security/ScreenPinningSettings$1;-><init>(Lcom/android/settings/security/ScreenPinningSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 210
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 211
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_navigation_bar_type"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 214
    iget-object v1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 218
    :cond_1
    return-void
.end method
