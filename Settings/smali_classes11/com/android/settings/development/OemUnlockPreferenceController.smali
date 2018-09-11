.class public Lcom/android/settings/development/OemUnlockPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OemUnlockPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# static fields
.field private static final PREFERENCE_KEY:Ljava/lang/String; = "oem_unlock_enable"

.field private static final TAG:Ljava/lang/String; = "OemUnlockPreferenceController"

.field private static final UIM_REMOTE_SIMLOCK_STATE_LOCKED:I = 0x0

.field private static final UIM_REMOTE_SIMLOCK_STATE_PERMANENT_UNLOCK:I = 0x2

.field private static final UIM_REMOTE_SIMLOCK_STATE_TEMPORARY_UNLOCK:I = 0x1

.field private static final simLockStateAppPackage:Ljava/lang/String; = "com.qualcomm.qti.uim"

.field private static final simLockStateAppService:Ljava/lang/String; = "com.qualcomm.qti.uim.RemoteSimLockService"


# instance fields
.field private isUimLocked:Z

.field private mActivity:Landroid/app/Activity;

.field private final mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mOemLockManager:Landroid/service/oemlock/OemLockManager;

.field private mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mSimlockConnection:Landroid/content/ServiceConnection;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

.field private uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "fragment"    # Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 78
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 69
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    .line 292
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/development/OemUnlockPreferenceController$1;-><init>(Lcom/android/settings/development/OemUnlockPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mSimlockConnection:Landroid/content/ServiceConnection;

    .line 310
    new-instance v1, Lcom/android/settings/development/OemUnlockPreferenceController$2;

    invoke-direct {v1, p0}, Lcom/android/settings/development/OemUnlockPreferenceController$2;-><init>(Lcom/android/settings/development/OemUnlockPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    .line 79
    const-string v1, "oem_lock"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/oemlock/OemLockManager;

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    .line 80
    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 81
    const-string v1, "phone"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 82
    iput-object p3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 83
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    if-eqz v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    goto :goto_1

    .line 84
    :cond_1
    :goto_0
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {v1, p2, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    iput-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 90
    :goto_1
    iput-object p2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mActivity:Landroid/app/Activity;

    .line 91
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUstMode()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLockServiceEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 92
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 93
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.qualcomm.qti.uim"

    const-string v4, "com.qualcomm.qti.uim.RemoteSimLockService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 95
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mSimlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1, v2, v0}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    .line 96
    .local v0, "ret":Z
    const-string v2, "OemUnlockPreferenceController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bind RemoteSimLockService ret = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v0    # "ret":Z
    goto :goto_2

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_2
    goto :goto_3

    .line 101
    :cond_2
    const-string v0, "OemUnlockPreferenceController"

    const-string v1, "isSimLockEnable not exist."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    .line 105
    :goto_3
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/development/OemUnlockPreferenceController;Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/OemUnlockPreferenceController;
    .param p1, "x1"    # Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    .line 53
    iput-object p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/settings/development/OemUnlockPreferenceController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/development/OemUnlockPreferenceController;
    .param p1, "x1"    # Z

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/settings/development/OemUnlockPreferenceController;)Lcom/android/settingslib/RestrictedSwitchPreference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/development/OemUnlockPreferenceController;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/development/OemUnlockPreferenceController;

    .line 53
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private enableOemUnlockPreference()Z
    .locals 1

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->isUimLocked:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private handleDeveloperOptionsToggled()V
    .locals 2

    .line 199
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 200
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 204
    :cond_0
    return-void
.end method

.method private isSimLockedDevice()Z
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 225
    .local v0, "phoneCount":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 226
    iget-object v3, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getAllowedCarriers(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 227
    const/4 v1, 0x1

    return v1

    .line 225
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 230
    .end local v2    # "i":I
    :cond_1
    return v1
.end method

.method public static isUimLockServiceEnable(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .line 279
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 280
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.qualcomm.qti.uim"

    const-string v3, "com.qualcomm.qti.uim.RemoteSimLockService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 282
    .local v1, "matches":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 283
    const/4 v2, 0x1

    return v2

    .line 285
    :cond_0
    return v2
.end method

.method private updateOemUnlockSettingDescription()V
    .locals 3

    .line 207
    const v0, 0x7f120a36

    .line 208
    .local v0, "oemUnlockSummary":I
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isBootloaderUnlocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 209
    const v0, 0x7f120a32

    goto :goto_0

    .line 210
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isSimLockedDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 211
    const v0, 0x7f120a35

    goto :goto_0

    .line 212
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockAllowedByUserAndCarrier()Z

    move-result v1

    if-nez v1, :cond_2

    .line 216
    const v0, 0x7f120a34

    .line 219
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 220
    return-void
.end method


# virtual methods
.method confirmEnableOemUnlock()V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 257
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v0}, Lcom/android/settings/development/EnableOemUnlockSettingWarningDialog;->show(Landroid/app/Fragment;)V

    .line 258
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1
    .param p1, "screen"    # Landroid/support/v7/preference/PreferenceScreen;

    .line 133
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 136
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 128
    const-string v0, "oem_unlock_enable"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isBootloaderUnlocked()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isDeviceOemUnlocked()Z

    move-result v0

    return v0
.end method

.method isOemUnlockAllowedByUserAndCarrier()Z
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 267
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 268
    .local v0, "userHandle":Landroid/os/UserHandle;
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v1}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowedByCarrier()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_factory_reset"

    .line 269
    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 268
    :goto_0
    return v1
.end method

.method isOemUnlockedAllowed()Z
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 275
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v0}, Landroid/service/oemlock/OemLockManager;->isOemUnlockAllowed()Z

    move-result v0

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .line 169
    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 170
    const/4 v1, -0x1

    if-ne p2, v1, :cond_1

    .line 171
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v1, v0}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 177
    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 179
    :cond_2
    return v0
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->handleDeveloperOptionsToggled()V

    .line 185
    return-void
.end method

.method public onOemUnlockConfirmed()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 189
    return-void
.end method

.method public onOemUnlockDismissed()V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    .line 193
    return-void

    .line 195
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 196
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;
    .param p2, "newValue"    # Ljava/lang/Object;

    .line 140
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 141
    .local v0, "isUnlocked":Z
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 142
    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0, v2, v1}, Lcom/android/settings/development/OemUnlockPreferenceController;->showKeyguardConfirmation(Landroid/content/res/Resources;I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->confirmEnableOemUnlock()V

    goto :goto_0

    .line 147
    :cond_0
    iget-object v2, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mOemLockManager:Landroid/service/oemlock/OemLockManager;

    invoke-virtual {v2, v1}, Landroid/service/oemlock/OemLockManager;->setOemUnlockAllowedByUser(Z)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {v1}, Lcom/android/settings/development/OemLockInfoDialog;->show(Landroid/app/Fragment;)V

    .line 150
    :cond_1
    :goto_0
    const/4 v1, 0x1

    return v1
.end method

.method showKeyguardConfirmation(Landroid/content/res/Resources;I)Z
    .locals 2
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "requestCode"    # I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    .line 251
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 252
    const v1, 0x7f120a31

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 251
    invoke-virtual {v0, p2, v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public unBindSimlockConnection()V
    .locals 2

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockService:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->uimRemoteSimlockServiceCallback:Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;

    invoke-interface {v0, v1}, Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockService;->deregisterCallback(Lcom/qualcomm/qti/remoteSimlock/IUimRemoteSimlockServiceCallback;)I

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mSimlockConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_0
    goto :goto_0

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    const-string v0, "OemUnlockPreferenceController"

    const-string v1, "unbindService mSimlockConnection."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2
    .param p1, "preference"    # Landroid/support/v7/preference/Preference;

    .line 155
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->isOemUnlockedAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->updateOemUnlockSettingDescription()V

    .line 159
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/OemUnlockPreferenceController;->enableOemUnlockPreference()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/settings/development/OemUnlockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    const-string v1, "no_factory_reset"

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 165
    :cond_0
    return-void
.end method
