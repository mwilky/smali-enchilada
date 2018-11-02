.class public Lcom/android/settings/applications/AppLaunchSettings;
.super Lcom/android/settings/applications/AppInfoWithHeader;
.source "AppLaunchSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_APP_LINK_STATE:Ljava/lang/String; = "app_link_state"

.field private static final KEY_CLEAR_DEFAULTS:Ljava/lang/String; = "app_launch_clear_defaults"

.field private static final KEY_SUPPORTED_DOMAIN_URLS:Ljava/lang/String; = "app_launch_supported_domain_urls"

.field private static final TAG:Ljava/lang/String; = "AppLaunchSettings"

.field private static final sBrowserIntent:Landroid/content/Intent;


# instance fields
.field private mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

.field private mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

.field private mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

.field private mHasDomainUrls:Z

.field private mIsBrowser:Z

.field private mPm:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoWithHeader;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/AppLaunchSettings;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/AppLaunchSettings;->updateAppLinkState(I)Z

    move-result v0

    return v0
.end method

.method private buildStateDropDown()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setShouldDisableView(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/AppDomainsPreference;->setShouldDisableView(Z)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/AppDomainsPreference;->setEnabled(Z)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/CharSequence;

    const v5, 0x7f120146

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const v5, 0x7f120147

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    const v5, 0x7f120148

    invoke-virtual {p0, v5}, Lcom/android/settings/applications/AppLaunchSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    aput-object v5, v4, v6

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-array v4, v3, [Ljava/lang/CharSequence;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v6

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    iget-boolean v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/DropDownPreference;->setEnabled(Z)V

    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    nop

    move v1, v0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    new-instance v2, Lcom/android/settings/applications/AppLaunchSettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/applications/AppLaunchSettings$1;-><init>(Lcom/android/settings/applications/AppLaunchSettings;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/DropDownPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/IntentFilterVerificationInfo;",
            ">;",
            "Ljava/util/List<",
            "Landroid/content/IntentFilter;",
            ">;)[",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    return-object v1
.end method

.method private isBrowserApp(Ljava/lang/String;)Z
    .locals 6

    sget-object v0, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    sget-object v1, Lcom/android/settings/applications/AppLaunchSettings;->sBrowserIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/high16 v3, 0x20000

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v5, :cond_0

    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-eqz v5, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private updateAppLinkState(I)Z
    .locals 6

    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, p1, :cond_1

    return v1

    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4, p1, v0}, Landroid/content/pm/PackageManager;->updateIntentVerificationStatusAsUser(Ljava/lang/String;II)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v5, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v4

    if-ne p1, v4, :cond_2

    const/4 v1, 0x1

    nop

    :cond_2
    move v3, v1

    goto :goto_0

    :cond_3
    const-string v1, "AppLaunchSettings"

    const-string v4, "Couldn\'t update intent verification status!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v3
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x11

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoWithHeader;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f16005f

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->addPreferencesFromResource(I)V

    const-string v0, "app_launch_supported_domain_urls"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppDomainsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    const-string v0, "app_launch_clear_defaults"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    const-string v0, "app_link_state"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/DropDownPreference;

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppLinkState:Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppLaunchSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/AppLaunchSettings;->isBrowserApp(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mHasDomainUrls:Z

    iget-boolean v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mIsBrowser:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getIntentFilterVerifications(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getAllIntentFilters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/applications/AppLaunchSettings;->getEntries(Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/CharSequence;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/AppDomainsPreference;->setTitles([Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppDomainUrls:Lcom/android/settings/applications/AppDomainsPreference;

    array-length v4, v2

    new-array v4, v4, [I

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/AppDomainsPreference;->setValues([I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/AppLaunchSettings;->buildStateDropDown()V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected refreshUi()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setPackageName(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/settings/applications/AppLaunchSettings;->mClearDefaultsPreference:Lcom/android/settings/applications/ClearDefaultsPreference;

    iget-object v1, p0, Lcom/android/settings/applications/AppLaunchSettings;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    const/4 v0, 0x1

    return v0
.end method
