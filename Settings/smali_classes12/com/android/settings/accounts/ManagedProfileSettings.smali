.class public Lcom/android/settings/accounts/ManagedProfileSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ManagedProfileSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final KEY_CONTACT:Ljava/lang/String; = "contacts_search"

.field private static final KEY_WORK_MODE:Ljava/lang/String; = "work_mode"

.field private static final TAG:Ljava/lang/String; = "ManagedProfileSettings"


# instance fields
.field private mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

.field private mManagedUser:Landroid/os/UserHandle;

.field private mUserManager:Landroid/os/UserManager;

.field private mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/ManagedProfileSettings;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/ManagedProfileSettings;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->updateWorkModePreference()V

    return-void
.end method

.method private getManagedUserFromArgument()Landroid/os/UserHandle;
    .locals 4

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-static {v1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object v1

    return-object v1
.end method

.method private loadDataAndPopulateUi()V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->updateWorkModePreference()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "managed_profile_contact_remote_search"

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    nop

    :cond_1
    invoke-virtual {v1, v3}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRemoteContactSearchDisallowed(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v2, v1}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_2
    return-void
.end method

.method private updateWorkModePreference()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isQuietModeEnabled(Landroid/os/UserHandle;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v0, :cond_0

    const v2, 0x7f121547

    goto :goto_0

    :cond_0
    const v2, 0x7f121546

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x191

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160066

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->addPreferencesFromResource(I)V

    const-string v0, "work_mode"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "contacts_search"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getManagedUserFromArgument()Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    new-instance v0, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/ManagedProfileSettings;Lcom/android/settings/accounts/ManagedProfileSettings$1;)V

    iput-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/ManagedProfileSettings$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mWorkModePreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/2addr v0, v1

    iget-object v2, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManager;->requestQuietModeEnabled(ZLandroid/os/UserHandle;)Z

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mContactPrefrence:Lcom/oneplus/settings/ui/OPRestrictedSwitchPreference;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-ne v0, v1, :cond_1

    move v2, v1

    nop

    :cond_1
    move v0, v2

    invoke-virtual {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "managed_profile_contact_remote_search"

    iget-object v4, p0, Lcom/android/settings/accounts/ManagedProfileSettings;->mManagedUser:Landroid/os/UserHandle;

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return v1

    :cond_2
    return v2
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-direct {p0}, Lcom/android/settings/accounts/ManagedProfileSettings;->loadDataAndPopulateUi()V

    return-void
.end method
