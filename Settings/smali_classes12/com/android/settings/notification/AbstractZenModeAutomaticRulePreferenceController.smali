.class public abstract Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "AbstractZenModeAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;
    }
.end annotation


# static fields
.field private static final RULE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mDefaultRuleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected mBackend:Lcom/android/settings/notification/ZenModeBackend;

.field protected mParent:Landroid/app/Fragment;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mRules:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$1;

    invoke-direct {v0}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$1;-><init>()V

    sput-object v0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->RULE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    invoke-direct {p0, p1, p2, p4}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeBackend;->getInstance(Landroid/content/Context;)Lcom/android/settings/notification/ZenModeBackend;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mPm:Landroid/content/pm/PackageManager;

    iput-object p3, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mParent:Landroid/app/Fragment;

    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    invoke-static {}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getDefaultRuleIds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private static getDefaultRuleIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mDefaultRuleIds:Ljava/util/List;

    if-nez v0, :cond_0

    sget-object v0, Landroid/service/notification/ZenModeConfig;->DEFAULT_RULE_IDS:Ljava/util/List;

    sput-object v0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mDefaultRuleIds:Ljava/util/List;

    :cond_0
    sget-object v0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mDefaultRuleIds:Ljava/util/List;

    return-object v0
.end method

.method public static getRuleInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)Lcom/android/settings/notification/ZenRuleInfo;
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.service.zen.automatic.ruleType"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    if-eqz v2, :cond_1

    new-instance v0, Lcom/android/settings/notification/ZenRuleInfo;

    invoke-direct {v0}, Lcom/android/settings/notification/ZenRuleInfo;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->serviceComponent:Landroid/content/ComponentName;

    const-string v3, "android.settings.ZEN_MODE_EXTERNAL_RULE_SETTINGS"

    iput-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->settingsAction:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings/notification/ZenRuleInfo;->title:Ljava/lang/String;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iput-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageName:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->configurationActivity:Landroid/content/ComponentName;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->packageLabel:Ljava/lang/CharSequence;

    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "android.service.zen.automatic.ruleInstanceLimit"

    const/4 v5, -0x1

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Lcom/android/settings/notification/ZenRuleInfo;->ruleInstanceLimit:I

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method protected static getRuleIntent(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.service.notification.extra.RULE_ID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    return-object v0
.end method

.method protected static getSettingsActivity(Landroid/content/pm/ServiceInfo;)Landroid/content/ComponentName;
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "android.service.zen.automatic.configurationActivity"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    return-object v0
.end method

.method private getZenModeRules()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getAutomaticZenRules()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method protected showNameRuleDialog(Lcom/android/settings/notification/ZenRuleInfo;Landroid/app/Fragment;)V
    .locals 3

    iget-object v0, p1, Lcom/android/settings/notification/ZenRuleInfo;->defaultConditionId:Landroid/net/Uri;

    new-instance v1, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$RuleNameChangeListener;-><init>(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;Lcom/android/settings/notification/ZenRuleInfo;)V

    const/4 v2, 0x0

    invoke-static {p2, v2, v0, v1}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroid/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;)V

    return-void
.end method

.method protected sortedRules()[Ljava/util/Map$Entry;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Landroid/app/AutomaticZenRule;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:Ljava/util/Set;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getZenModeRules()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:Ljava/util/Set;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    sget-object v1, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->RULE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    invoke-direct {p0}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->getZenModeRules()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->mRules:Ljava/util/Set;

    return-void
.end method
