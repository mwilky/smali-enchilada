.class public Lcom/android/settings/users/AppRestrictionsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppRestrictionsFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;,
        Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
    }
.end annotation


# static fields
.field private static final CUSTOM_REQUEST_CODE_START:I = 0x3e8

.field private static final DEBUG:Z = false

.field private static final DELIMITER:Ljava/lang/String; = ";"

.field public static final EXTRA_NEW_USER:Ljava/lang/String; = "new_user"

.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"

.field private static final MAX_APP_RESTRICTIONS:I = 0x64

.field private static final PKG_PREFIX:Ljava/lang/String; = "pkg_"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAppList:Landroid/support/v7/preference/PreferenceGroup;

.field private mAppListChanged:Z

.field private mAppLoadingTask:Landroid/os/AsyncTask;

.field private mCustomRequestCode:I

.field private mCustomRequestMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mFirstTime:Z

.field private mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

.field protected mIPm:Landroid/content/pm/IPackageManager;

.field private mNewUser:Z

.field protected mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageObserver:Landroid/content/BroadcastReceiver;

.field protected mRestrictedProfile:Z

.field private mSysPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mUser:Landroid/os/UserHandle;

.field private mUserBackgrounding:Landroid/content/BroadcastReceiver;

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/settings/users/AppRestrictionsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/AppRestrictionsFragment$2;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    iput-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/AppRestrictionsFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settings/users/AppRestrictionsFragment;)Lcom/android/settingslib/users/AppRestrictionsHelper;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment;->onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/users/AppRestrictionsFragment;Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->onPackageChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/users/AppRestrictionsFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->populateApps()V

    return-void
.end method

.method private addLocationAppRestrictionsPreference(Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 5

    iget-object v0, p1, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    const v1, 0x7f080212

    invoke-virtual {p2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(I)V

    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v1, v2}, Lcom/android/settings/users/RestrictionUtils;->getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/RestrictionEntry;

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v3}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v4

    invoke-virtual {p2, v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    invoke-virtual {p2, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    invoke-virtual {p2, p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    const/16 v2, 0x64

    invoke-virtual {p2, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, p2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    return-void
.end method

.method private findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    aget-object v1, p2, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    aget-object v1, p1, v0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method private generateCustomActivityRequestCode(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)I
    .locals 2

    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    iget v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestCode:I

    return v0
.end method

.method private getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;
    .locals 4

    iget-object v0, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    const v0, 0x7f120177

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v3, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const v0, 0x7f1212f3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p2, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v3, v3, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    aput-object v3, v2, v1

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-eqz v0, :cond_2

    const v0, 0x7f120176

    invoke-virtual {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    const/high16 v3, 0x800000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method private static isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z
    .locals 1

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->requiredAccountType:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/content/pm/PackageInfo;->restrictedAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isPlatformSigned(Landroid/content/pm/PackageInfo;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0
.end method

.method private onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    :goto_0
    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isPanelOpen()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPanelOpen(Z)V

    :cond_1
    return-void
.end method

.method private onPackageChanged(Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-direct {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez v2, :cond_0

    return-void

    :cond_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_2
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    :cond_3
    return-void
.end method

.method private onRestrictionsReceived(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Ljava/util/ArrayList;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    const/4 v0, 0x1

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    const/4 v3, 0x0

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getType()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance v4, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v14/preference/MultiSelectListPreference;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    move-object v4, v3

    check-cast v4, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v4, v3

    check-cast v4, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/MultiSelectListPreference;->setEntries([Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getAllSelectedStrings()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    move-object v5, v3

    check-cast v5, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v14/preference/MultiSelectListPreference;->setValues(Ljava/util/Set;)V

    move-object v5, v3

    check-cast v5, Landroid/support/v14/preference/MultiSelectListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v14/preference/MultiSelectListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_1
    new-instance v4, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedString()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    move-object v5, v3

    check-cast v5, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    new-instance v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    move-object v3, v4

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    move-object v4, v3

    check-cast v4, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    nop

    :goto_1
    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getOrder()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    const-string v6, "pkg_"

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    invoke-virtual {v3, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const v4, 0x7f080139

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    :cond_1
    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_3
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private populateApps()V
    .locals 19

    move-object/from16 v1, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v3, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v4, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v6, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v0, v6}, Lcom/android/settings/Utils;->getExistingUser(Landroid/os/UserManager;Landroid/os/UserHandle;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v3, v6, v7}, Landroid/content/pm/PackageManager;->queryBroadcastReceivers(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->getVisibleApps()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v10, 0x1

    if-eqz v0, :cond_d

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    iget-object v12, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->packageName:Ljava/lang/String;

    if-nez v12, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v0, v14, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V

    move-object v14, v0

    invoke-direct {v1, v8, v12}, Lcom/android/settings/users/AppRestrictionsFragment;->resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z

    move-result v15

    if-eqz v13, :cond_3

    invoke-direct {v1, v11, v14}, Lcom/android/settings/users/AppRestrictionsFragment;->addLocationAppRestrictionsPreference(Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0, v12, v10}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    move-object/from16 v17, v16

    const v0, 0x400040

    :try_start_0
    invoke-interface {v4, v12, v0, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v17, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object/from16 v0, v17

    :goto_1
    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-boolean v10, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-eqz v10, :cond_5

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppUnsupportedInRestrictedProfile(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_5

    goto :goto_0

    :cond_5
    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v10, :cond_6

    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v16

    :goto_2
    move-object/from16 v10, v16

    goto :goto_3

    :cond_6
    goto :goto_2

    :goto_3
    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v14, v7}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->activityName:Ljava/lang/CharSequence;

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct {v1, v12}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setKey(Ljava/lang/String;)V

    if-eqz v15, :cond_7

    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v10, :cond_7

    const/4 v10, 0x1

    goto :goto_4

    :cond_7
    move v10, v7

    :goto_4
    invoke-static {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$600(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    invoke-virtual {v14, v7}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setPersistent(Z)V

    invoke-virtual {v14, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {v14, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    invoke-direct {v1, v0, v11}, Lcom/android/settings/users/AppRestrictionsFragment;->getPackageSummary(Landroid/content/pm/PackageInfo;Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-boolean v10, v0, Landroid/content/pm/PackageInfo;->requiredForAllUsers:Z

    if-nez v10, :cond_9

    invoke-direct {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isPlatformSigned(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_8

    goto :goto_5

    :cond_8
    iget-boolean v10, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-nez v10, :cond_b

    invoke-direct {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->isAppEnabledForUser(Landroid/content/pm/PackageInfo;)Z

    move-result v10

    if-eqz v10, :cond_b

    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    goto :goto_6

    :cond_9
    :goto_5
    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    if-nez v15, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-nez v10, :cond_b

    invoke-direct {v1, v12, v14, v7}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    :cond_b
    :goto_6
    iget-object v10, v11, Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;->masterEntry:Lcom/android/settingslib/users/AppRestrictionsHelper$SelectableAppInfo;

    if-eqz v10, :cond_c

    const/4 v10, 0x1

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setImmutable(Z)V

    iget-object v10, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v10, v12}, Lcom/android/settingslib/users/AppRestrictionsHelper;->isPackageSelected(Ljava/lang/String;)Z

    move-result v10

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    :cond_c
    const/16 v10, 0x64

    iget-object v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v7

    add-int/lit8 v7, v7, 0x2

    mul-int/2addr v10, v7

    invoke-virtual {v14, v10}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setOrder(I)V

    iget-object v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v14}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v10

    invoke-virtual {v7, v12, v10}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    iget-object v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v7, v14}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    nop

    const/4 v7, 0x0

    goto/16 :goto_0

    :cond_d
    const/4 v7, 0x1

    iput-boolean v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-boolean v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    if-eqz v0, :cond_e

    iget-boolean v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    if-eqz v0, :cond_e

    const/4 v7, 0x0

    iput-boolean v7, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mFirstTime:Z

    iget-object v0, v1, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppsStates(Lcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_e
    return-void
.end method

.method private removeRestrictionsForApp(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V
    .locals 3

    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, p1, v1}, Landroid/os/UserManager;->getApplicationRestrictions(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.GET_RESTRICTION_ENTRIES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.restrictions_bundle"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v6, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;

    invoke-direct {v6, p0, p1, p2, p3}, Lcom/android/settings/users/AppRestrictionsFragment$RestrictionsResultReceiver;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v4, v1

    invoke-virtual/range {v3 .. v10}, Landroid/app/Activity;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private resolveInfoListHasPackage(Ljava/util/List;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private updateAllEntries(Ljava/lang/String;Z)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v1

    instance-of v2, v1, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v2, p2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method protected getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x61

    return v0
.end method

.method protected init(Landroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    new-instance v1, Landroid/os/UserHandle;

    const-string v2, "user_id"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v2, "user_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/os/UserHandle;

    const-string v3, "user_id"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    iput-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_1
    const-string v2, "new_user"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    if-nez v1, :cond_3

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    :cond_3
    new-instance v1, Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-direct {v1, v2, v3}, Lcom/android/settingslib/users/AppRestrictionsHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;)V

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "package"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mIPm:Landroid/content/pm/IPackageManager;

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "user"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android"

    const/16 v3, 0x40

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mSysPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    const v1, 0x7f16001a

    invoke-virtual {p0, v1}, Lcom/android/settings/users/AppRestrictionsFragment;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getAppPreferenceGroup()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 7

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-nez v0, :cond_0

    sget-object v1, Lcom/android/settings/users/AppRestrictionsFragment;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown requestCode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pkg_"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.extra.restrictions_list"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    const-string v3, "android.intent.extra.restrictions_bundle"

    invoke-virtual {p3, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    if-eqz v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setRestrictions(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v2}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5, v6}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v5, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v3, v5}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mCustomRequestMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x7f0a006c

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->onAppSettingsIconClicked(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)V

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/RestrictionEntry;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-static {v2, v3, v4}, Lcom/android/settings/users/RestrictionUtils;->setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V

    return-void

    :cond_1
    iget-object v3, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v5

    invoke-virtual {v3, v1, v5}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$800(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;

    move-result-object v3

    if-nez v3, :cond_2

    invoke-direct {p0, v1, v0, v4}, Lcom/android/settings/users/AppRestrictionsFragment;->requestRestrictionsForApp(Ljava/lang/String;Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mRestrictedProfile:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v1, v3, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    invoke-direct {p0, v2, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onDisableUiForPackage(Ljava/lang/String;)V
    .locals 2

    nop

    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment;->getKeyForPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/users/AppRestrictionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mNewUser:Z

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/users/AppRestrictionsFragment$3;

    invoke-direct {v1, p0}, Lcom/android/settings/users/AppRestrictionsFragment$3;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/settings/users/AppRestrictionsFragment$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ";"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppList:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "pkg_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v4}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getRestrictions()Ljava/util/ArrayList;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/RestrictionEntry;

    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getType()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move-object v6, p2

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v6, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v7, v8}, Landroid/content/RestrictionEntry;->setAllSelectedStrings([Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    move-object v6, p1

    check-cast v6, Landroid/support/v7/preference/ListPreference;

    move-object v8, p2

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/content/RestrictionEntry;->setSelectedString(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getChoiceEntries()[Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Landroid/content/RestrictionEntry;->getChoiceValues()[Ljava/lang/String;

    move-result-object v9

    move-object v10, p2

    check-cast v10, Ljava/lang/String;

    invoke-direct {p0, v8, v9, v10}, Lcom/android/settings/users/AppRestrictionsFragment;->findInArray([Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_2
    move-object v6, p2

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-virtual {v7, v6}, Landroid/content/RestrictionEntry;->setSelectedState(Z)V

    nop

    :goto_1
    iget-object v6, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {v5}, Landroid/content/RestrictionsManager;->convertRestrictionsToBundle(Ljava/util/List;)Landroid/os/Bundle;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v6, v2, v8, v9}, Landroid/os/UserManager;->setApplicationRestrictions(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_2

    :cond_0
    goto :goto_0

    :cond_1
    :goto_2
    const/4 v6, 0x1

    return v6

    :cond_2
    const/4 v1, 0x0

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pkg_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string v3, "pkg_"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isChecked()Z

    move-result v3

    xor-int/2addr v3, v2

    invoke-virtual {v0, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setChecked(Z)V

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v1, v3}, Lcom/android/settingslib/users/AppRestrictionsHelper;->setPackageSelected(Ljava/lang/String;Z)V

    invoke-virtual {v0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v3}, Lcom/android/settings/users/AppRestrictionsFragment;->updateAllEntries(Ljava/lang/String;Z)V

    iput-boolean v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-object v4, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mHelper:Lcom/android/settingslib/users/AppRestrictionsHelper;

    invoke-virtual {v4, v1, v3, p0}, Lcom/android/settingslib/users/AppRestrictionsHelper;->applyUserAppState(Ljava/lang/String;ZLcom/android/settingslib/users/AppRestrictionsHelper$OnDisableUiForPackageListener;)V

    :cond_0
    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUserBackgrounding:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.USER_BACKGROUND"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mPackageObserver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppListChanged:Z

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    invoke-virtual {v2}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v2, v3, :cond_1

    :cond_0
    new-instance v2, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;-><init>(Lcom/android/settings/users/AppRestrictionsFragment;Lcom/android/settings/users/AppRestrictionsFragment$1;)V

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v2, v1}, Lcom/android/settings/users/AppRestrictionsFragment$AppLoadingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mAppLoadingTask:Landroid/os/AsyncTask;

    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_id"

    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
