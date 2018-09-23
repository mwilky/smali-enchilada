.class public Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.source "ZenAutomaticRuleSwitchPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "zen_automatic_rule_switch"


# instance fields
.field private mId:Ljava/lang/String;

.field private mRule:Landroid/app/AutomaticZenRule;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    const-string v0, "zen_automatic_rule_switch"

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    const-string v0, "zen_automatic_rule_switch"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a051f

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/SwitchBar;

    iput-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v2, 0x7f1215c7

    invoke-virtual {v1, v2, v2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "zen_automatic_rule_switch"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onResume(Landroid/app/AutomaticZenRule;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    iput-object p2, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    move v0, p2

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v2, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mId:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/notification/ZenModeBackend;->setZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/android/settings/notification/ZenAutomaticRuleSwitchPreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    :cond_0
    return-void
.end method
