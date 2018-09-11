.class public Lcom/oneplus/settings/OPMultitaskingCleanWay;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPMultitaskingCleanWay.java"

# interfaces
.implements Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;


# static fields
.field private static final KEY_DEEP_CLEAR_WAY:Ljava/lang/String; = "op_deep_clear_way"

.field private static final KEY_NORMAL_CLEAR_WAY:Ljava/lang/String; = "op_normal_clear_way"

.field private static final METRICSLOGGER_MULTITASKING_CLEARWAY_VALUE:I = 0x4ee


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

.field private mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 66
    const/16 v0, 0x4ee

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "icicle"    # Landroid/os/Bundle;

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    const v0, 0x7f160084

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPMultitaskingCleanWay;->addPreferencesFromResource(I)V

    .line 33
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    iput-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    .line 34
    const-string v0, "op_normal_clear_way"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPMultitaskingCleanWay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    .line 35
    const-string v0, "op_deep_clear_way"

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPMultitaskingCleanWay;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/ui/RadioButtonPreference;

    iput-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    .line 36
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 37
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/ui/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/ui/RadioButtonPreference$OnClickListener;)V

    .line 38
    return-void
.end method

.method public onRadioButtonClicked(Lcom/android/settings/ui/RadioButtonPreference;)V
    .locals 3
    .param p1, "emiter"    # Lcom/android/settings/ui/RadioButtonPreference;

    .line 53
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 55
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 56
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_clear_way"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne p1, v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 59
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    invoke-virtual {v0, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 60
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_clear_way"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    :cond_1
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 43
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-eqz v0, :cond_2

    .line 44
    iget-object v0, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_clear_way"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 45
    .local v0, "value":I
    iget-object v1, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mNormalClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 46
    iget-object v1, p0, Lcom/oneplus/settings/OPMultitaskingCleanWay;->mDeepClearWayButton:Lcom/android/settings/ui/RadioButtonPreference;

    if-ne v0, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v1, v2}, Lcom/android/settings/ui/RadioButtonPreference;->setChecked(Z)V

    .line 48
    .end local v0    # "value":I
    :cond_2
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 49
    return-void
.end method
