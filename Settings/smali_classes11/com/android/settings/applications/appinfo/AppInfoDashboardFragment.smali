.class public Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AppInfoDashboardFragment.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;,
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;,
        Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;
    }
.end annotation


# static fields
.field public static final ARG_PACKAGE_NAME:Ljava/lang/String; = "package"

.field public static final ARG_PACKAGE_UID:Ljava/lang/String; = "uid"

.field private static final DLG_BASE:I = 0x0

.field static final DLG_CLEAR_INSTANT_APP:I = 0x4

.field private static final DLG_DISABLE:I = 0x2

.field private static final DLG_FORCE_STOP:I = 0x1

.field private static final DLG_SPECIAL_DISABLE:I = 0x3

.field static final INSTALL_INSTANT_APP_MENU:I = 0x3

.field static final LOADER_BATTERY:I = 0x4

.field static final LOADER_CHART_DATA:I = 0x2

.field static final LOADER_STORAGE:I = 0x3

.field private static final REQUEST_REMOVE_DEVICE_ADMIN:I = 0x1

.field static final REQUEST_UNINSTALL:I = 0x0
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final SUB_INFO_FRAGMENT:I = 0x1

.field private static final TAG:Ljava/lang/String; = "AppInfoDashboard"

.field static final UNINSTALL_ALL_USERS_MENU:I = 0x1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final UNINSTALL_UPDATES:I = 0x2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final localLOGV:Z = false


# instance fields
.field private mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

.field private mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mAppsControlDisallowedBySystem:Z

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableAfterUninstall:Z

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFinishing:Z

.field private mInitialized:Z

.field private mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

.field private mListeningToPackageRemove:Z

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private mPackageName:Ljava/lang/String;

.field final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private mShowUninstalled:Z

.field private mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mUpdatedSysApp:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$4;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->forceStopPackage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Landroid/content/pm/PackageManager;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onPackageRemoved()V

    return-void
.end method

.method private forceStopPackage(Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x327

    invoke-virtual {v0, v1, v3, p1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const-string v1, "AppInfoDashboard"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->invalidatePackage(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v2, p1, v1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    :cond_0
    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v3, v4, v5}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;->checkForceStop(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Landroid/content/pm/PackageInfo;)V

    return-void
.end method

.method private getPackageName()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    if-nez v1, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, "intent"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    :cond_3
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    return-object v1
.end method

.method private isDisabledUntilUsed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isSingleUser()Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserCount()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private onPackageRemoved()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->finishActivity(I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private setIntentAndFinish(ZZ)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "chg"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Landroid/os/Bundle;",
            "Lcom/android/settings/SettingsPreferenceFragment;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object p2, v0

    :cond_0
    const-string v0, "package"

    iget-object v1, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "uid"

    iget-object v1, p4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p3, v1}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    return-void
.end method

.method private stopListeningToPackageRemove()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method private uninstallPkg(Ljava/lang/String;ZZ)V
    .locals 7

    const-string v0, "AppInfoDashboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uninstallPkg-package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.UNINSTALL_PACKAGE"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/oneplus/settings/utils/OPUtils;->hasMultiApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "oneplus.intent.action.DELETE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    const-string v2, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const/16 v4, 0x368

    const/4 v5, 0x0

    new-array v6, v5, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v6}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {p0, v1, v5}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    iput-boolean p3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    return-void
.end method


# virtual methods
.method addToCallbackList(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method createDialog(II)Landroid/app/AlertDialog;
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const v0, 0x7f120134

    const v1, 0x7f120135

    const/4 v2, 0x0

    const v3, 0x7f12058e

    packed-switch p1, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_0
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$2;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_1
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$1;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    invoke-virtual {v1, v0, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f1206a0

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f12069f

    invoke-virtual {v1, v4}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f120594

    new-instance v4, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;

    invoke-direct {v4, p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$3;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    invoke-virtual {v0, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    new-instance v3, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/AppHeaderViewPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-direct {v3, p1, p0, v0}, Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppActionButtonPreferenceController:Lcom/android/settings/applications/appinfo/AppActionButtonPreferenceController;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/core/AbstractPreferenceController;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    move-object v6, v4

    check-cast v6, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance v3, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInstantAppButtonPreferenceController:Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;

    invoke-direct {v3, p1, p0, v0, v2}, Lcom/android/settings/applications/appinfo/AppBatteryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {v3, p1, p0, v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;

    invoke-direct {v3, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;

    invoke-direct {v3, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultBrowserShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;

    invoke-direct {v3, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultPhoneShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;

    invoke-direct {v3, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultEmergencyShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;

    invoke-direct {v3, p1, v0}, Lcom/android/settings/applications/appinfo/DefaultSmsShortcutPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method ensurePackageInfoAvailable(Landroid/app/Activity;)Z
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    const-string v0, "AppInfoDashboard"

    const-string v1, "Package info not available. Is this package already uninstalled?"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/app/Activity;->finishAndRemoveTask()V

    const/4 v0, 0x0

    return v0

    :cond_0
    return v1
.end method

.method getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "AppInfoDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I
    .locals 8
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    const/16 v5, 0x80

    iget v6, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, p1, v5, v6}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v5, v4, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-eqz v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "AppInfoDashboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Package: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " not found for user: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_0

    :cond_1
    return v1
.end method

.method getPackageInfo()Landroid/content/pm/PackageInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-object v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160015

    return v0
.end method

.method handleForceStopButtonClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v0, :cond_1

    nop

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    :goto_0
    return-void
.end method

.method handleUninstallButtonClick()V
    .locals 9

    const-string v0, "AppInfoDashboard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleUninstallButtonClick-mAppEntry: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v4, v2, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    const/16 v6, 0x369

    new-array v3, v3, [Landroid/util/Pair;

    invoke-virtual {v5, v2, v6, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    invoke-virtual {v2, v4, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v2, v0, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v4, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v4, v0, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v4, v3

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v1

    :goto_1
    const-string v5, "AppInfoDashboard"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleUninstallButtonClick-admin:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " uninstallBlockedBySystem: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_4

    if-nez v4, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    :cond_4
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v5, v1

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v5, v5, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v5, :cond_6

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isDisabledUntilUsed()Z

    move-result v5

    if-nez v5, :cond_6

    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->isSingleUser()Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const/16 v7, 0x36b

    new-array v8, v3, [Landroid/util/Pair;

    invoke-virtual {v5, v6, v7, v8}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    new-instance v5, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v6, v6, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v5, p0, v6, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v6, v1, v3

    invoke-virtual {v5, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_2

    :cond_7
    iget-object v5, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v5, v5, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v6, 0x800000

    and-int/2addr v5, v6

    if-nez v5, :cond_8

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_2

    :cond_8
    invoke-direct {p0, v0, v3, v3}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    :goto_2
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDisableAfterUninstall:Z

    new-instance v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v4, 0x3

    invoke-direct {v2, p0, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;-><init>(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Landroid/content/pm/ApplicationInfo;I)V

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v3, v0, v1

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$DisableChanger;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->onPackageRemoved()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAllSizesComputed()V
    .locals 0

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 10

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->setPackageName(Ljava/lang/String;)V

    const-class v1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppDataUsagePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/android/settings/applications/appinfo/AppInstallerInfoPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;

    const/4 v3, 0x1

    new-array v4, v3, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/appinfo/AppInstallerPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    const-class v2, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppNotificationPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppOpenByDefaultPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->setPackageName(Ljava/lang/String;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppSettingPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppStoragePreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/AppVersionPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/InstantAppDomainsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v2, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;

    invoke-virtual {v2, p0}, Lcom/android/settings/applications/appinfo/WriteSystemSettingsPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v4, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    invoke-virtual {p0, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;

    invoke-virtual {v4, p0}, Lcom/android/settings/applications/appinfo/DrawOverlayDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v6, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;

    invoke-virtual {p0, v6}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;

    invoke-virtual {v6, v0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Lcom/android/settings/applications/appinfo/PictureInPictureDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v7, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    invoke-virtual {p0, v7}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;

    invoke-virtual {v7, v0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setPackageName(Ljava/lang/String;)V

    invoke-virtual {v7, p0}, Lcom/android/settings/applications/appinfo/ExternalSourceDetailPreferenceController;->setParentFragment(Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;)V

    const-class v8, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    invoke-virtual {p0, v8}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;

    const/4 v9, 0x4

    new-array v9, v9, [Lcom/android/settingslib/core/AbstractPreferenceController;

    aput-object v2, v9, v5

    aput-object v4, v9, v3

    const/4 v3, 0x2

    aput-object v6, v9, v3

    const/4 v3, 0x3

    aput-object v7, v9, v3

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v8, v3}, Lcom/android/settings/applications/appinfo/AdvancedAppInfoPreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->ensurePackageInfoAvailable(Landroid/app/Activity;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startListeningToPackageRemove()V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setHasOptionsMenu(Z)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f120139

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    const/4 v1, 0x1

    const v2, 0x7f121204

    invoke-interface {p1, v0, v1, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->stopListeningToPackageRemove()V

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onDestroy()V

    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v1

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->uninstallPkg(Ljava/lang/String;ZZ)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPackageIconChanged()V
    .locals 0

    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppInfoDashboard"

    const-string v1, "Package change irrelevant, skipping"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mFinishing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v1, v1, 0x80

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050009

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    if-nez v4, :cond_2

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    invoke-interface {v1}, Landroid/view/MenuItem;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_3
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppsControlDisallowedBySystem:Z

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->refreshUi()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->setIntentAndFinish(ZZ)V

    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    return-void
.end method

.method refreshUi()Z
    .locals 6
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->retrieveAppEntry()V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mCallbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;

    invoke-interface {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$Callback;->refreshUi()V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    const/high16 v2, 0x800000

    const/4 v3, 0x1

    if-nez v0, :cond_4

    iput-boolean v3, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mInitialized:Z

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v2

    if-nez v0, :cond_3

    move v1, v3

    nop

    :cond_3
    iput-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    goto :goto_1

    :cond_4
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v5, 0x400200

    invoke-virtual {v0, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-boolean v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mShowUninstalled:Z

    if-nez v4, :cond_6

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    and-int/2addr v2, v4

    if-eqz v2, :cond_5

    move v1, v3

    nop

    :cond_5
    return v1

    :cond_6
    nop

    :goto_1
    return v3

    :catch_0
    move-exception v0

    return v1
.end method

.method retrieveAppEntry()V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    iput v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserId:I

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v1, :cond_2

    :try_start_0
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v3, 0x401240

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AppInfoDashboard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when retrieving package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_2
    const-string v1, "AppInfoDashboard"

    const-string v2, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    :goto_1
    return-void
.end method

.method setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-void
.end method

.method shouldShowUninstallForAll(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUpdatedSysApp:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageName:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getNumberOfUserWithPackageInstalled(Ljava/lang/String;)I

    move-result v1

    if-ge v1, v2, :cond_6

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v1, v2

    if-eqz v1, :cond_6

    const/4 v0, 0x0

    goto :goto_1

    :cond_6
    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v0, 0x0

    goto :goto_1

    :cond_7
    :goto_0
    const/4 v0, 0x0

    :cond_8
    :goto_1
    return v0
.end method

.method showDialogInner(II)V
    .locals 4

    invoke-static {p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dialog "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method startListeningToPackageRemove()V
    .locals 3
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mListeningToPackageRemove:Z

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
