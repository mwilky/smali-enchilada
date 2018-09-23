.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"


# static fields
.field static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final BACKUP_DATA:Ljava/lang/String; = "backup_data"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final BACKUP_INACTIVE:Ljava/lang/String; = "backup_inactive"

.field static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final DATA_MANAGEMENT:Ljava/lang/String; = "data_management"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final GSETTINGS_PROVIDER:Ljava/lang/String; = "com.google.settings"

.field private static final TAG:Ljava/lang/String; = "PrivacySettings"


# instance fields
.field private mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

.field private mBackup:Landroid/support/v7/preference/Preference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/support/v7/preference/Preference;

.field private mEnabled:Z

.field private mManageData:Landroid/support/v7/preference/Preference;

.field private preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object v0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "backup"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "PrivacySettings"

    const-string v5, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.settings"

    invoke-virtual {v3, v4, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    const-string v3, "backup_inactive"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_4

    :cond_3
    const-string v3, "backup_data"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v3, "auto_restore"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    const-string v3, "configure_account"

    invoke-interface {p1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1201e3

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_0
    return-void
.end method

.method private updateToggles()V
    .locals 10

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :try_start_0
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v7

    move v1, v7

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v7}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "config"

    invoke-direct {p0, v8, v9}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v2, v8

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v3, v8

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    const-string v9, "management"

    invoke-direct {p0, v8, v9}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    move-object v4, v8

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v7}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    move-object v5, v8

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/Preference;

    if-eqz v1, :cond_0

    const v9, 0x7f120062

    goto :goto_0

    :cond_0
    const v9, 0x7f120061

    :goto_0
    invoke-virtual {v8, v9}, Landroid/support/v7/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v7

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_1
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    const-string v8, "backup_auto_restore"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-ne v8, v9, :cond_1

    move v8, v9

    goto :goto_2

    :cond_1
    move v8, v6

    :goto_2
    invoke-virtual {v7, v8}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v7, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    move v7, v9

    goto :goto_3

    :cond_2
    move v7, v6

    :goto_3
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    invoke-direct {p0, v3}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    if-eqz v4, :cond_3

    if-eqz v1, :cond_3

    move v6, v9

    nop

    :cond_3
    if-eqz v6, :cond_4

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v4}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    if-eqz v5, :cond_5

    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v5}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v8, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_5
    :goto_4
    return-void
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 5

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 p1, 0x0

    const-string v2, "PrivacySettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Backup "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " intent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " fails to resolve; ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f12070a

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f1600ab

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "backup"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/PrivacySettings;->setPreferenceReferences(Landroid/support/v7/preference/PreferenceScreen;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_0
    if-ltz v3, :cond_2

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    :cond_0
    return-void
.end method

.method setPreferenceReferences(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "backup_data"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/Preference;

    const-string v0, "auto_restore"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "configure_account"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    const-string v0, "data_management"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    return-void
.end method
