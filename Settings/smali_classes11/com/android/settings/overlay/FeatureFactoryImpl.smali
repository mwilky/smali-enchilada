.class public Lcom/android/settings/overlay/FeatureFactoryImpl;
.super Lcom/android/settings/overlay/FeatureFactory;
.source "FeatureFactoryImpl.java"


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# instance fields
.field private mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

.field private mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field private mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

.field private mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

.field private mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

.field private mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

.field private mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

.field private mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

.field private mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field private mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

.field private mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

.field private mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

.field private mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

.field private mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/overlay/FeatureFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/accounts/AccountFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/accounts/AccountFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAccountFeatureProvider:Lcom/android/settings/accounts/AccountFeatureProvider;

    return-object v0
.end method

.method public getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
    .locals 4

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;

    new-instance v1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "device_policy"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/settings/applications/ApplicationFeatureProviderImpl;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/IPackageManager;Landroid/app/admin/DevicePolicyManager;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    return-object v0
.end method

.method public getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/gestures/AssistGestureFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mAssistGestureFeatureProvider:Lcom/android/settings/gestures/AssistGestureFeatureProvider;

    return-object v0
.end method

.method public getBluetoothFeatureProvider(Landroid/content/Context;)Lcom/android/settings/bluetooth/BluetoothFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mBluetoothFeatureProvider:Lcom/android/settings/bluetooth/BluetoothFeatureProvider;

    return-object v0
.end method

.method public getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDashboardFeatureProvider:Lcom/android/settings/dashboard/DashboardFeatureProviderImpl;

    return-object v0
.end method

.method public getDeviceIndexFeatureProvider()Lcom/android/settings/search/DeviceIndexFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDeviceIndexFeatureProvider:Lcom/android/settings/search/DeviceIndexFeatureProviderImpl;

    return-object v0
.end method

.method public getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/dock/DockUpdaterFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mDockUpdaterFeatureProvider:Lcom/android/settings/overlay/DockUpdaterFeatureProvider;

    return-object v0
.end method

.method public getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;

    const-string v1, "device_policy"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    new-instance v4, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v4, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v5

    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v1, v0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProviderImpl;-><init>(Landroid/content/Context;Landroid/app/admin/DevicePolicyManager;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/os/UserManager;Landroid/net/ConnectivityManager;Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mEnterprisePrivacyFeatureProvider:Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;

    return-object v0
.end method

.method public getLocaleFeatureProvider()Lcom/android/settings/localepicker/LocaleFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/localepicker/LocaleFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mLocaleFeatureProvider:Lcom/android/settings/localepicker/LocaleFeatureProvider;

    return-object v0
.end method

.method public getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object v0
.end method

.method public getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mPowerUsageFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    return-object v0
.end method

.method public getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/search/SearchFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/search/SearchFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSearchFeatureProvider:Lcom/android/settings/search/SearchFeatureProvider;

    return-object v0
.end method

.method public getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/security/SecurityFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/security/SecurityFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSecurityFeatureProvider:Lcom/android/settings/security/SecurityFeatureProvider;

    return-object v0
.end method

.method public getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/slices/SlicesFeatureProviderImpl;

    invoke-direct {v0}, Lcom/android/settings/slices/SlicesFeatureProviderImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSlicesFeatureProvider:Lcom/android/settings/slices/SlicesFeatureProvider;

    return-object v0
.end method

.method public getSuggestionFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mSuggestionFeatureProvider:Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    return-object v0
.end method

.method public getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/settings/users/UserFeatureProviderImpl;

    invoke-direct {v0, p1}, Lcom/android/settings/users/UserFeatureProviderImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/overlay/FeatureFactoryImpl;->mUserFeatureProvider:Lcom/android/settings/users/UserFeatureProvider;

    return-object v0
.end method
