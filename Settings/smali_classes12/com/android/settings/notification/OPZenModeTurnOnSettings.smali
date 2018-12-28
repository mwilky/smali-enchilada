.class public Lcom/android/settings/notification/OPZenModeTurnOnSettings;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "OPZenModeTurnOnSettings.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;
    }
.end annotation


# static fields
.field private static final KEY_ZEN_TURN_ON:Ljava/lang/String; = "zen_turn_on"

.field private static final TAG:Ljava/lang/String; = "OPZenModeTurnOnSettings"


# instance fields
.field private mFragment:Landroid/app/FragmentManager;

.field private mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

.field mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V
    .locals 1

    const-string v0, "zen_turn_on"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    new-instance v0, Lcom/android/settings/notification/OPZenModeTurnOnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$1;-><init>(Lcom/android/settings/notification/OPZenModeTurnOnSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p3, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mFragment:Landroid/app/FragmentManager;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    nop

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v0, "zen_turn_on"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;-><init>(Lcom/android/settings/notification/OPZenModeTurnOnSettings;Landroid/support/v7/preference/Preference;)V

    iput-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_turn_on"

    return-object v0
.end method

.method protected getPreferenceSummary()Ljava/lang/String;
    .locals 14

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    const-string v1, ""

    const-wide/16 v2, -0x1

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_3

    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v7, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v7, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v8, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v8, v8, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getOwnerCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_0

    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f1215fc

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    iget-object v5, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    const v6, 0x7f1215fe

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    return-object v5

    :cond_2
    sget-object v7, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    invoke-virtual {v7, v4}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseManualRuleTime(Landroid/net/Uri;)J

    move-result-wide v2

    const-wide/16 v7, 0x0

    cmp-long v7, v2, v7

    if-lez v7, :cond_3

    sget-object v7, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-virtual {v7, v2, v3, v8}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->getFormattedTime(JI)Ljava/lang/CharSequence;

    move-result-object v7

    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    const v9, 0x7f1215fd

    new-array v10, v6, [Ljava/lang/Object;

    aput-object v7, v10, v5

    invoke-virtual {v8, v9, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_3
    :goto_0
    iget-object v4, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v7}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v8

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v9, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v9}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->isTimeRule(Landroid/net/Uri;)Z

    move-result v8

    const v9, 0x7f1215fb

    if-nez v8, :cond_4

    iget-object v4, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v8, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v8, v6, v5

    invoke-virtual {v4, v9, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    :cond_4
    sget-object v8, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mZenModeConfigWrapper:Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;

    iget-object v10, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v8, v10}, Lcom/android/settings/notification/AbstractZenModePreferenceController$ZenModeConfigWrapper;->parseAutomaticRuleEndTime(Landroid/net/Uri;)J

    move-result-wide v10

    cmp-long v8, v10, v2

    if-lez v8, :cond_5

    move-wide v2, v10

    iget-object v8, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    new-array v12, v6, [Ljava/lang/Object;

    iget-object v13, v7, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    aput-object v13, v12, v5

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :cond_5
    goto :goto_1

    :cond_6
    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "zen_turn_on"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    return v1

    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const-string v0, "OPZenModeTurnOnSettings"

    const-string v1, "Click true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getZenDuration()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeBackend;->setZenModeForDuration(I)V

    goto :goto_0

    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v2}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    goto :goto_0

    :pswitch_1
    new-instance v1, Lcom/android/settingslib/notification/EnableZenModeDialog;

    iget-object v3, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Lcom/android/settingslib/notification/EnableZenModeDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/android/settingslib/notification/EnableZenModeDialog;->createDialog()Landroid/app/Dialog;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    nop

    :goto_0
    goto :goto_1

    :cond_2
    const-string v0, "OPZenModeTurnOnSettings"

    const-string v3, "Click off"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/ZenModeBackend;->setZenMode(I)V

    :goto_1
    return v2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isAvailable()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportSocTriState()Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;->unregister(Landroid/content/ContentResolver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    iget-object v1, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;->register(Landroid/content/ContentResolver;)V

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSettingObserver:Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/OPZenModeTurnOnSettings$SettingObserver;->onChange(ZLandroid/net/Uri;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->updateState(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getZenMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getPreferenceSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    iget-object v0, p0, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->mSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/notification/OPZenModeTurnOnSettings;->getPreferenceSummary()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
