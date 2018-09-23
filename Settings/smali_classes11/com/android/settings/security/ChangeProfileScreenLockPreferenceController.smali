.class public Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;
.super Lcom/android/settings/security/ChangeScreenLockPreferenceController;
.source "ChangeProfileScreenLockPreferenceController.java"


# static fields
.field private static final KEY_UNLOCK_SET_OR_CHANGE_PROFILE:Ljava/lang/String; = "unlock_set_or_change_profile"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "unlock_set_or_change_profile"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v2, v3}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    const v2, 0x7f120878

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    const/4 v1, 0x1

    return v1
.end method

.method public isAvailable()Z
    .locals 4

    iget v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x20000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x30000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x40000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x50000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x60000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x80000

    if-eq v0, v3, :cond_2

    return v1

    :cond_2
    return v2

    :cond_3
    :goto_0
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;I)V

    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120882

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    :goto_0
    return-void
.end method
