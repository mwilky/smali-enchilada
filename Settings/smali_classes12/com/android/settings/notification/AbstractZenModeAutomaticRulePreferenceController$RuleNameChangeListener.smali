.class public Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;
.super Ljava/lang/Object;
.source "AbstractZenModeAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RuleNameChangeListener"
.end annotation


# instance fields
.field mRuleInfo:Lcom/android/settings/notification/ZenRuleInfo;

.field final synthetic this$0:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;Lcom/android/settings/notification/ZenRuleInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->mRuleInfo:Lcom/android/settings/notification/ZenRuleInfo;

    return-void
.end method


# virtual methods
.method public onOk(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 10

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->access$100(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x4f3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->mRuleInfo:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v6, v1, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->mRuleInfo:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v7, v1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    const/4 v8, 0x2

    const/4 v9, 0x1

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->this$0:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    iget-object v1, v1, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v1, v0}, Lcom/android/settings/notification/ZenModeBackend;->addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;->mRuleInfo:Lcom/android/settings/notification/ZenRuleInfo;

    iget-object v2, v2, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
