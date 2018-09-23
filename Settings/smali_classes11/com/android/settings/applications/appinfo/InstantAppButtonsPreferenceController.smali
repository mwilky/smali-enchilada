.class public Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "InstantAppButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final KEY_INSTANT_APP_BUTTONS:Ljava/lang/String; = "instant_app_buttons"

.field private static final META_DATA_DEFAULT_URI:Ljava/lang/String; = "default-url"


# instance fields
.field private mInstallMenu:Landroid/view/MenuItem;

.field private mLaunchUri:Ljava/lang/String;

.field private final mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPreference:Lcom/android/settings/applications/LayoutPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    const-string v0, "instant_app_buttons"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iput-object p3, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->getDefaultLaunchUri()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    if-eqz p4, :cond_0

    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getDefaultLaunchUri()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const v2, 0x800080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v5, :cond_0

    const-string v6, "default-url"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    return-object v6

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private initButtons(Landroid/view/View;)V
    .locals 5

    const v0, 0x7f0a0270

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a0101

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    const v2, 0x7f0a02b1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const/16 v4, 0x8

    if-nez v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.BROWSABLE"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    new-instance v4, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$2vM5nla3CEsaIUNVk7alr9UEbBA;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$2vM5nla3CEsaIUNVk7alr9UEbBA;-><init>(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$oBWjqqdf33bi3sDY5lE6TGLlFJM;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$oBWjqqdf33bi3sDY5lE6TGLlFJM;-><init>(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_0
    new-instance v3, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$f8slAx9lBDdGAmwfjMjp59JCarA;

    invoke-direct {v3, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$f8slAx9lBDdGAmwfjMjp59JCarA;-><init>(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public static synthetic lambda$initButtons$0(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initButtons$1(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initButtons$2(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/AlertDialog;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f1203d3

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v3, 0x7f12038a

    invoke-virtual {v1, v3, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1203d2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "instant_app_buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPreference:Lcom/android/settings/applications/LayoutPreference;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPreference:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a0272

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->initButtons(Landroid/view/View;)V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    new-array v4, v3, [Landroid/util/Pair;

    const/16 v5, 0x39b

    invoke-virtual {v0, v1, v5, v2, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v3, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const/4 v1, 0x2

    const v2, 0x7f12076e

    const/4 v3, 0x0

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mInstallMenu:Landroid/view/MenuItem;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mInstallMenu:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mInstallMenu:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    :cond_0
    return-void
.end method
