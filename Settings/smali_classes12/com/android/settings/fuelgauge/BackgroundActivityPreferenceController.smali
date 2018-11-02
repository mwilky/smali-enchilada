.class public Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BackgroundActivityPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final KEY_BACKGROUND_ACTIVITY:Ljava/lang/String; = "background_activity"
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "BgActivityPrefContr"


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field mDpm:Landroid/app/admin/DevicePolicyManager;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

.field private mTargetPackage:Ljava/lang/String;

.field private final mUid:I

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;)V
    .locals 6

    invoke-static {p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/core/InstrumentedPreferenceFragment;ILjava/lang/String;Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;)V
    .locals 1
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object p5, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iput p3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "background_activity"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    const-string v0, "background_activity"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v2, 0x4e

    iget v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->showDialog(Z)V

    :cond_1
    return v1
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method showDialog(Z)V
    .locals 5
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;-><init>()V

    iget v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setUid(I)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/batterytip/AppInfo$Builder;->build()Lcom/android/settings/fuelgauge/batterytip/AppInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/UnrestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;

    invoke-direct {v2, v1, v0}, Lcom/android/settings/fuelgauge/batterytip/tips/RestrictAppTip;-><init>(ILcom/android/settings/fuelgauge/batterytip/AppInfo;)V

    :goto_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;I)Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v3, v4, v1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v4, "BgActivityPrefContr"

    invoke-virtual {v3, v1, v4}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    const/16 v3, 0x4e

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    iget-object v4, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/settings/Utils;->isProfileOrDeviceOwner(Landroid/os/UserManager;Landroid/app/admin/DevicePolicyManager;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public updateSummary(Landroid/support/v7/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mPowerWhitelistBackend:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1201d8

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    iget v2, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mUid:I

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BackgroundActivityPreferenceController;->mTargetPackage:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v1, 0x7f1201d7

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_3

    const v2, 0x7f120f10

    goto :goto_1

    :cond_3
    const v2, 0x7f120f0f

    :goto_1
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    :goto_2
    return-void
.end method
