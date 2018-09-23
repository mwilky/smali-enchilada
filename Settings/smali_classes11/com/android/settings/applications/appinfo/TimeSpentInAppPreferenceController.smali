.class public Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "TimeSpentInAppPreferenceController.java"


# static fields
.field static final SEE_TIME_IN_APP_TEMPLATE:Landroid/content/Intent;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mIntent:Landroid/content/Intent;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.TIME_SPENT_IN_APP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->SEE_TIME_IN_APP_TEMPLATE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method private isSystemApp(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 6

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mIntent:Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, v4}, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->isSystemApp(Landroid/content/pm/ResolveInfo;)Z

    move-result v5

    if-eqz v5, :cond_2

    return v3

    :cond_2
    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 3

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mPackageName:Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->SEE_TIME_IN_APP_TEMPLATE:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/appinfo/TimeSpentInAppPreferenceController;->mIntent:Landroid/content/Intent;

    return-void
.end method
