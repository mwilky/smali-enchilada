.class public Lcom/android/settings/accounts/AccountTypePreferenceLoader;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;
    }
.end annotation


# static fields
.field private static final ACCOUNT_KEY:Ljava/lang/String; = "account"

.field private static final LAUNCHING_LOCATION_SETTINGS:Ljava/lang/String; = "com.android.settings.accounts.LAUNCHING_LOCATION_SETTINGS"

.field private static final TAG:Ljava/lang/String; = "AccountTypePrefLoader"


# instance fields
.field private mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iput-object p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/support/v14/preference/PreferenceFragment;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    return-object v0
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :try_start_0
    iget-boolean v5, v3, Landroid/content/pm/ActivityInfo;->exported:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    if-nez v5, :cond_1

    return v6

    :cond_1
    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v7, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v7}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    return v6

    :cond_2
    iget-object v5, v0, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget v7, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v8, v5, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v7, v8, :cond_3

    move v2, v6

    nop

    :cond_3
    return v2

    :catch_0
    move-exception v5

    const-string v6, "AccountTypePrefLoader"

    const-string v7, "Intent considered unsafe due to exception."

    invoke-static {v6, v7, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v2
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 7

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v2, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_0

    iget v2, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v3}, Landroid/support/v14/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    const v4, 0x7f130440

    const/4 v6, 0x1

    invoke-virtual {v3, v4, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-direct {v4, v6, v2, v5}, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;-><init>(Ljava/lang/Class;Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v5}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v5

    iget v6, v1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {v5, v4, v6, p2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v5

    :cond_0
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "AccountTypePrefLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "AccountTypePrefLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 7

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    new-instance v4, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;

    const-class v5, Lcom/android/settings/location/LocationSettings;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f120851

    invoke-direct {v4, p0, v5, v6}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    :cond_1
    const/high16 v4, 0x10000

    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_2
    const-string v5, "account"

    invoke-virtual {v3, v5, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const/high16 v6, 0x10000000

    or-int/2addr v5, v6

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v5, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;

    invoke-direct {v5, p0, v0, p2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method
