.class public Lcom/oneplus/settings/OPStatusBarCustomizeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPStatusBarCustomizeSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;
    }
.end annotation


# static fields
.field private static final BATTERY_BAR_STYLE:I = 0x0

.field private static final BATTERY_CIRCLE_STYLE:I = 0x1

.field private static final BATTERY_HIDDEN_STYLE:I = 0x2

.field private static final KEY_BATTERY_PERCENT:Ljava/lang/String; = "enable_show_statusbar"

.field private static final KEY_BATTERY_STYLE:Ljava/lang/String; = "battery_style"

.field private static final KEY_CLOCK:Ljava/lang/String; = "clock"

.field private static final KEY_STATUSBAR_ICON_MANGER:Ljava/lang/String; = "status_bar_icon_manager"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final SHOW_POWER_PERCENT_IN_STATUSBAR_TITLE:Ljava/lang/String; = "show_power_percent_in_statusbar_title"

.field private static final TAG:Ljava/lang/String; = "OPStatusBarCustomizeSettings"


# instance fields
.field private mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

.field private mClockPreference:Landroid/support/v7/preference/ListPreference;

.field private mContext:Landroid/content/Context;

.field private mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;

    invoke-direct {v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings$StatusBarCustomizeIndexProvider;-><init>()V

    sput-object v0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private updateBatteryStylePreferenceDescription(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 p1, v0, -0x1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160095

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    const-string v0, "battery_style"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v0, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "status_bar_battery_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mBatteryStylePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "enable_show_statusbar"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "clock"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mClockPreference:Landroid/support/v7/preference/ListPreference;
    
    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mClockPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    const-string v1, "status_bar_icon_manager"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mStatusBarIconMangerPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    iget-object v1, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "status_bar_show_battery_percent"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    move v2, v4

    nop

    :cond_0
    invoke-virtual {v3, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const-string v5, "show_power_percent_in_statusbar_title"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "show_power_percent_in_statusbar_title"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mShowBatteryPercentPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v4, v5}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    :cond_1
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "battery_style"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_battery_style"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, v1}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->updateBatteryStylePreferenceDescription(I)V

    return v2

    :cond_0
    const-string v1, "enable_show_statusbar"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v3, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "status_bar_show_battery_percent"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    return v2
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "status_bar_icon_manager"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->mContext:Landroid/content/Context;

    const-class v3, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-class v2, Lcom/oneplus/settings/OPStatusBarCustomizeIconSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v3, p0

    move-object v4, p0

    invoke-virtual/range {v3 .. v8}, Lcom/oneplus/settings/OPStatusBarCustomizeSettings;->startFragment(Landroid/app/Fragment;Ljava/lang/String;IILandroid/os/Bundle;)Z

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method
