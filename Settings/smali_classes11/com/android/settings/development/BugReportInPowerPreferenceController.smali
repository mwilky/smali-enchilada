.class public Lcom/android/settings/development/BugReportInPowerPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "BugReportInPowerPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final KEY_BUGREPORT_IN_POWER:Ljava/lang/String; = "bugreport_in_power"

.field static SETTING_VALUE_OFF:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field static SETTING_VALUE_ON:I
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput v0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_ON:I

    const/4 v0, 0x0

    sput v0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "bugreport_in_power"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_debugging_features"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    sget v2, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "bugreport_in_power_menu"

    if-eqz v0, :cond_0

    sget v3, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_ON:I

    goto :goto_0

    :cond_0
    sget v3, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    :goto_0
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bugreport_in_power_menu"

    sget v2, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/development/BugReportInPowerPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    sget v2, Lcom/android/settings/development/BugReportInPowerPreferenceController;->SETTING_VALUE_OFF:I

    if-eq v0, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method
