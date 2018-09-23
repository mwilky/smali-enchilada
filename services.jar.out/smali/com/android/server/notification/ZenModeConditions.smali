.class public Lcom/android/server/notification/ZenModeConditions;
.super Ljava/lang/Object;
.source "ZenModeConditions.java"

# interfaces
.implements Lcom/android/server/notification/ConditionProviders$Callback;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "ZenModeHelper"


# instance fields
.field private final mConditionProviders:Lcom/android/server/notification/ConditionProviders;

.field private mFirstEvaluation:Z

.field private final mHelper:Lcom/android/server/notification/ZenModeHelper;

.field private final mSubscriptions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/net/Uri;",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Lcom/android/server/notification/ZenModeHelper;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/ZenModeHelper;Lcom/android/server/notification/ConditionProviders;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    iput-object p1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    iput-object p2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string v1, "countdown"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/CountdownConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/CountdownConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string/jumbo v1, "schedule"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/ScheduleConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/ScheduleConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    const-string v1, "event"

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    new-instance v1, Lcom/android/server/notification/EventConditionProvider;

    invoke-direct {v1}, Lcom/android/server/notification/EventConditionProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/server/notification/ConditionProviders;->addSystemProvider(Lcom/android/server/notification/SystemConditionProviderService;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v0, p0}, Lcom/android/server/notification/ConditionProviders;->setCallback(Lcom/android/server/notification/ConditionProviders$Callback;)V

    return-void
.end method

.method private evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/service/notification/ZenModeConfig$ZenRule;",
            "Landroid/util/ArraySet<",
            "Landroid/net/Uri;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p1, :cond_b

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v2}, Lcom/android/server/notification/ConditionProviders;->getSystemProviders()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/SystemConditionProviderService;

    invoke-virtual {v3, v0}, Lcom/android/server/notification/SystemConditionProviderService;->isValidConditionId(Landroid/net/Uri;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v3}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v3}, Lcom/android/server/notification/SystemConditionProviderService;->asInterface()Landroid/service/notification/IConditionProvider;

    move-result-object v6

    invoke-virtual {v4, v5, v0, v6}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    invoke-virtual {v3}, Lcom/android/server/notification/SystemConditionProviderService;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    const/4 v1, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    if-nez v1, :cond_5

    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ConditionProviders;->findConditionProvider(Landroid/content/ComponentName;)Landroid/service/notification/IConditionProvider;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "ZenModeHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ensure external rule exists: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v3, :cond_3

    const/4 v6, 0x1

    goto :goto_1

    :cond_3
    move v6, v2

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v4, v5, v0, v3}, Lcom/android/server/notification/ConditionProviders;->ensureRecordExists(Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/IConditionProvider;)V

    :cond_5
    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-nez v3, :cond_6

    const-string v3, "ZenModeHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No component found for automatic rule: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    return-void

    :cond_6
    if-eqz p2, :cond_7

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz p3, :cond_9

    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;->subscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v3, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    goto :goto_2

    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_8
    const/4 v2, 0x0

    iput-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    sget-boolean v2, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v2, :cond_9

    const-string v2, "ZenModeHelper"

    const-string/jumbo v3, "zmc failed to subscribe"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_2
    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-nez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    iget-object v3, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v2, v3, v4}, Lcom/android/server/notification/ConditionProviders;->findCondition(Landroid/content/ComponentName;Landroid/net/Uri;)Landroid/service/notification/Condition;

    move-result-object v2

    iput-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v2, :cond_a

    sget-boolean v2, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "ZenModeHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found existing condition for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    :cond_b
    :goto_3
    return-void
.end method

.method private isAutomaticActive(Landroid/content/ComponentName;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v2, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v4, v3, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    goto :goto_0

    :cond_3
    return v0
.end method

.method private updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-eqz p3, :cond_3

    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    invoke-static {p2, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    :cond_2
    iput-object p2, p3, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    return v0
.end method

.method private updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-boolean v1, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_0
    iput-boolean v0, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Snoozing reset for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    return v0

    :cond_2
    return v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mSubscriptions="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public evaluateConfig(Landroid/service/notification/ZenModeConfig;Z)V
    .locals 7

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v0, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->isTrueOrUnknown()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ZenModeHelper"

    const-string v1, "evaluateConfig: clearing manual rule"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    :cond_2
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v1, v0, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    iget-object v1, p1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, v2, v0, p2}, Lcom/android/server/notification/ZenModeConditions;->evaluateRule(Landroid/service/notification/ZenModeConfig$ZenRule;Landroid/util/ArraySet;Z)V

    invoke-direct {p0, v2}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v3, v2, -0x1

    :goto_1
    if-ltz v3, :cond_5

    iget-object v4, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    if-eqz p2, :cond_4

    invoke-virtual {v0, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/android/server/notification/ZenModeConditions;->mConditionProviders:Lcom/android/server/notification/ConditionProviders;

    invoke-virtual {v6, v5, v4}, Lcom/android/server/notification/ConditionProviders;->unsubscribeIfNecessary(Landroid/content/ComponentName;Landroid/net/Uri;)V

    iget-object v6, p0, Lcom/android/server/notification/ZenModeConditions;->mSubscriptions:Landroid/util/ArrayMap;

    invoke-virtual {v6, v3}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_5
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/notification/ZenModeConditions;->mFirstEvaluation:Z

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onBootComplete()V
    .locals 0

    return-void
.end method

.method public onConditionChanged(Landroid/net/Uri;Landroid/service/notification/Condition;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConditionChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/notification/ZenModeConditions;->updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    iget-object v2, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {p0, p1, p2, v3}, Lcom/android/server/notification/ZenModeConditions;->updateCondition(Landroid/net/Uri;Landroid/service/notification/Condition;Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v1, v4

    invoke-direct {p0, v3}, Lcom/android/server/notification/ZenModeConditions;->updateSnoozing(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v4

    or-int/2addr v1, v4

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    const-string v3, "conditionChanged"

    invoke-virtual {v2, v0, v3}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public onServiceAdded(Landroid/content/ComponentName;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/notification/ZenModeConditions;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ZenModeHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceAdded "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object v1, p0, Lcom/android/server/notification/ZenModeConditions;->mHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v1

    const-string/jumbo v2, "zmc.onServiceAdded"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/notification/ZenModeHelper;->setConfig(Landroid/service/notification/ZenModeConfig;Ljava/lang/String;)V

    return-void
.end method

.method public onUserSwitched()V
    .locals 0

    return-void
.end method
