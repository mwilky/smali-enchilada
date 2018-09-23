.class public Lcom/android/settings/display/ThemePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ThemePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_THEME:Ljava/lang/String; = "theme"


# instance fields
.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mOverlayService:Lcom/android/settings/wrapper/OverlayManagerWrapper;

.field private final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "overlay"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-direct {v0}, Lcom/android/settings/wrapper/OverlayManagerWrapper;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/ThemePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wrapper/OverlayManagerWrapper;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wrapper/OverlayManagerWrapper;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/ThemePreferenceController;->mOverlayService:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private getTheme()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mOverlayService:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    const-string v1, "android"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-virtual {v3}, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-direct {p0, v3}, Lcom/android/settings/display/ThemePreferenceController;->isTheme(Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    iget-object v3, v3, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    return-object v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private isTheme(Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;)Z
    .locals 3

    const-string v0, "android.theme"

    iget-object v1, p1, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v2, p1, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/pm/PackageInfo;->isStaticOverlayPackage()Z

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    :catch_0
    move-exception v0

    return v1
.end method


# virtual methods
.method getAvailableThemes()[Ljava/lang/String;
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mOverlayService:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    const-string v1, "android"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    :goto_0
    if-ge v2, v3, :cond_1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    invoke-direct {p0, v4}, Lcom/android/settings/display/ThemePreferenceController;->isTheme(Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;

    iget-object v4, v4, Lcom/android/settings/wrapper/OverlayManagerWrapper$OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method getCurrentTheme()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/android/settings/display/ThemePreferenceController;->getTheme()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "theme"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const-string v0, "theme"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/display/ThemePreferenceController;->mContext:Landroid/content/Context;

    const/16 v3, 0x330

    new-array v4, v1, [Landroid/util/Pair;

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    :cond_0
    return v1
.end method

.method public isAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/android/settings/display/ThemePreferenceController;->mOverlayService:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/display/ThemePreferenceController;->getAvailableThemes()[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    array-length v3, v0

    if-le v3, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    return v1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-direct {p0}, Lcom/android/settings/display/ThemePreferenceController;->getTheme()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/settings/display/ThemePreferenceController;->mOverlayService:Lcom/android/settings/wrapper/OverlayManagerWrapper;

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/wrapper/OverlayManagerWrapper;->setEnabledExclusiveInCategory(Ljava/lang/String;I)Z

    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7

    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/display/ThemePreferenceController;->getAvailableThemes()[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    new-array v2, v2, [Ljava/lang/CharSequence;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    array-length v5, v1

    if-ge v4, v5, :cond_0

    :try_start_0
    iget-object v5, p0, Lcom/android/settings/display/ThemePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    aget-object v6, v1, v4

    invoke-virtual {v5, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/display/ThemePreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v2, v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    aget-object v6, v1, v4

    aput-object v6, v2, v4

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/android/settings/display/ThemePreferenceController;->getCurrentTheme()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    nop

    :goto_2
    array-length v6, v1

    if-ge v3, v6, :cond_2

    aget-object v6, v1, v3

    invoke-static {v6, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v5, v2, v3

    goto :goto_3

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    :goto_3
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/display/ThemePreferenceController;->mContext:Landroid/content/Context;

    const v6, 0x7f12052e

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    return-void
.end method
