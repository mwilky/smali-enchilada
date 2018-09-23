.class public final Lcom/oneplus/server/TriggerManager;
.super Ljava/lang/Object;
.source "TriggerManager.java"


# static fields
.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "oimc.json"

.field private static final CONFIG_VERSION:Ljava/lang/String; = "1.0"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDataDir:Ljava/io/File;

.field private mFuncToRunningRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/OPFunction;",
            "Ljava/util/HashSet<",
            "Lcom/oneplus/server/Rule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFunctionManager:Lcom/oneplus/server/FunctionManager;

.field private mInTestMode:Z

.field private mModeManager:Lcom/oneplus/server/ModeManager;

.field private mModeToFuncs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/SceneMode;",
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/OPFunction;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mModeToRules:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/SceneMode;",
            "Ljava/util/HashSet<",
            "Lcom/oneplus/server/Rule;",
            ">;>;"
        }
    .end annotation
.end field

.field private mRuleManager:Lcom/oneplus/server/RuleManager;

.field private mRunningFuncs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/OPFunction;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningPool:Lcom/oneplus/server/RunningPool;

.field private mRunningRules:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/oneplus/server/Rule;",
            ">;"
        }
    .end annotation
.end field

.field private final mSystemDir:Ljava/io/File;

.field private final printDebug:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/oneplus/server/ModeManager;Lcom/oneplus/server/FunctionManager;Lcom/oneplus/server/RuleManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    iput-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    iput-object p1, p0, Lcom/oneplus/server/TriggerManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    iput-object p3, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    iput-object p4, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    new-instance v0, Lcom/oneplus/server/RunningPool;

    invoke-direct {v0, p1}, Lcom/oneplus/server/RunningPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0}, Lcom/oneplus/server/RunningPool;->start()V

    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mDataDir:Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mSystemDir:Ljava/io/File;

    return-void
.end method

.method private addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)",
            "Lcom/oneplus/server/Rule;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/server/RuleManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-virtual {v0, p4}, Lcom/oneplus/server/Rule;->setSourceFlag(I)V

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "add rule done for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_3
    return-object v0
.end method

.method private addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v2, v3, p3}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getStartConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setStartConfig(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getStopConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setStopConfig(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/MsgObjectArg;",
            "I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p4}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-virtual {p4}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private addRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v1

    return v1
.end method

.method private addRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private addRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private applyOnlineConfig(Landroid/util/ArraySet;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/server/RuleManager;->getRuleSet(II)Landroid/util/ArraySet;

    move-result-object v0

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "SystemMode"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lcom/oneplus/server/Rule;

    nop

    invoke-virtual {v10}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Ljava/lang/String;

    nop

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const/4 v8, 0x1

    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    goto :goto_3

    :cond_3
    return-void
.end method

.method private bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bind for remote func "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed, function is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    instance-of v3, v2, Lcom/oneplus/oimc/OIMCRemoteFunc;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/oneplus/oimc/OIMCRemoteFunc;

    invoke-virtual {v1, p2}, Lcom/oneplus/oimc/OIMCRemoteFunc;->bindRemoteAction(Lcom/oneplus/os/IOIMCRemoteAction;)Z

    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to action "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    nop

    const/4 v1, 0x1

    return v1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bind for remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed, not an OIMCRemoteFunc type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1
.end method

.method private calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;
    .locals 10

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/Rule;

    invoke-virtual {v6}, Lcom/oneplus/server/Rule;->getRulePrio()I

    move-result v8

    invoke-virtual {v6}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v9

    if-ne v9, v7, :cond_0

    invoke-static {v2, v8}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v7

    if-gez v7, :cond_1

    move v2, v8

    move-object v4, v6

    goto :goto_1

    :cond_0
    invoke-static {v1, v8}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v7

    if-gez v7, :cond_1

    move v1, v8

    move-object v3, v6

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRulePrio()I

    move-result v5

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v6

    if-ne v6, v7, :cond_3

    invoke-static {v2, v5}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v6

    if-gez v6, :cond_4

    move v2, v5

    move-object v4, p2

    goto :goto_2

    :cond_3
    invoke-static {v1, v5}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v6

    if-gez v6, :cond_4

    move v1, v5

    move-object v3, p2

    :cond_4
    :goto_2
    const/16 v5, 0xff

    if-ne v1, v5, :cond_6

    if-ne v2, v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move-object v5, v4

    :goto_3
    return-object v5

    :cond_6
    if-ne v2, v5, :cond_7

    return-object v3

    :cond_7
    invoke-static {v1, v2}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v5

    if-lez v5, :cond_8

    return-object v3

    :cond_8
    return-object v4
.end method

.method private doDumpRunningFunctions(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "Current Running Functions: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private doDumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "================ Dumping OIMC Information ================="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p3}, Lcom/oneplus/server/TriggerManager;->doDumpSystemMode(Ljava/io/PrintWriter;)V

    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/ModeManager;->dumpAllModes(Ljava/io/PrintWriter;)V

    :cond_1
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/FunctionManager;->dumpAllFunctions(Ljava/io/PrintWriter;)V

    :cond_2
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/RuleManager;->dump(Ljava/io/PrintWriter;)V

    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p3}, Lcom/oneplus/server/TriggerManager;->doDumpRunningFunctions(Ljava/io/PrintWriter;)V

    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/RunningPool;->dump(Ljava/io/PrintWriter;)V

    :cond_5
    return-void
.end method

.method private doDumpSystemMode(Ljava/io/PrintWriter;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Current System Mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->dumpCurrNonSysModes(Ljava/io/PrintWriter;)V

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->dumpCurrUserMode(Ljava/io/PrintWriter;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "Current System Mode is unset"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private doGetFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 3

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    :goto_0
    return v2
.end method

.method private doGetSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return v0

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return v0

    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    return v0

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private doModeSwitchUpdate(ILcom/oneplus/server/SceneMode;Lcom/oneplus/server/SceneMode;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/Rule;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/Rule;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/OPFunction;

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    goto :goto_4

    :cond_6
    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5, p4, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    goto :goto_4

    :cond_7
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/OPFunction;

    invoke-direct {p0, v6, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v7

    invoke-direct {p0, v6, v7, p4, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    goto :goto_5

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->prepareFunctionDone()V

    return-void
.end method

.method private doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/OPFunction;

    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    goto :goto_2

    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5, p3, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->prepareFunctionDone()V

    return-void
.end method

.method private flushLoop(Lcom/oneplus/server/OPFunction;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    return-void
.end method

.method private funcConfig(Ljava/lang/String;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private genCustomConfigString()Ljava/lang/String;
    .locals 19

    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v3, "version"

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    iget-object v5, v1, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v5}, Lcom/oneplus/server/FunctionManager;->getFunctionTable()Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, v1, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10, v9}, Lcom/oneplus/server/RuleManager;->getRuleSetByFunc(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v8

    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/server/Rule;

    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v12}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v14

    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :goto_2
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v15}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    const/4 v10, 0x0

    goto :goto_2

    :cond_0
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    const/4 v10, 0x0

    goto :goto_1

    :cond_1
    const-string/jumbo v10, "on"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v10, v1, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    const/4 v11, 0x2

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v12, v11}, Lcom/oneplus/server/RuleManager;->getRuleSetByFunc(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v10

    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/server/Rule;

    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v13}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_2

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/oneplus/server/SceneMode;

    move-object/from16 v17, v16

    move-object/from16 v18, v2

    move-object/from16 v1, v17

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto :goto_4

    :cond_2
    move-object/from16 v18, v2

    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto :goto_3

    :cond_3
    move-object/from16 v18, v2

    const-string/jumbo v1, "off"

    invoke-virtual {v7, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    nop

    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto/16 :goto_0

    :cond_4
    move-object/from16 v18, v2

    const-string v1, "Functionlist"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "output: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while write config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfigFile(Ljava/io/File;)Ljava/io/File;
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oimc.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private modeConfig(IILcom/oneplus/server/MsgObjectArg;)Z
    .locals 5

    invoke-virtual {p3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, can\'t change system mode priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v3

    if-ne v3, p2, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, same priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Configuring mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " to priority "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, p2}, Lcom/oneplus/server/SceneMode;->setPrio(I)V

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    const/4 v2, 0x1

    return v2
.end method

.method private modeEnter(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 5

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "Mode enter failed, mode is null"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is already entered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v2}, Lcom/oneplus/server/ModeManager;->isSystemMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Warning] Use mode switch to change between system modes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_3
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/server/ModeManager;->setSystemMode(Lcom/oneplus/server/SceneMode;)V

    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entering mode "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_5
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    iput-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    :cond_6
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isMainUserMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->setCurrUserMode(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v2, v4}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_8

    return v3

    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    return v3
.end method

.method private modeExit(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "Mode enter failed, mode is null"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    if-nez v2, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is not entered"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t exit system mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_5

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    :cond_5
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    iput-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    :cond_6
    return v3
.end method

.method private modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 8

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    if-nez v0, :cond_1

    goto/16 :goto_2

    :cond_1
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Mode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is not exist"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v4, v1}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v4

    if-nez v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not exist"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode switch failed, mode is same: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_4
    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    if-ne v5, v6, :cond_5

    goto :goto_1

    :cond_5
    iget-boolean v5, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v5, :cond_6

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Switching mode from "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " to "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_6
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    iput-boolean v7, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    :cond_7
    invoke-virtual {v3, v6}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    invoke-virtual {v4, v7}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v3}, Lcom/oneplus/server/ModeManager;->setSystemMode(Lcom/oneplus/server/SceneMode;)V

    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v4, v3, v5}, Lcom/oneplus/server/TriggerManager;->doModeSwitchUpdate(ILcom/oneplus/server/SceneMode;Lcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iput-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    :cond_9
    return v7

    :cond_a
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is not entered, or mode "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is already exited"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_b
    :goto_2
    const-string v3, "Mode switch failed, mode missed"

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2
.end method

.method private modeTransition(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 6

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "modeTransition failed, mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " is not exist"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No mode transition for system mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t do transition, mode already entered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v2

    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transiting mode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v1, v4}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    iput-boolean v5, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    :cond_4
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v1, v3}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v1, v3}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-eqz v3, :cond_5

    iput-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    :cond_5
    return v5
.end method

.method private parseLocalConfig(Ljava/lang/String;)V
    .locals 20

    move-object/from16 v1, p0

    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "local config is empty!"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    sget-boolean v6, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v6, :cond_1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "config version "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    if-eqz v7, :cond_b

    const-string v8, "Functionlist"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move v9, v3

    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    const-string/jumbo v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    sget-boolean v12, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "function name "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v12, "on"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    move v13, v3

    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_6

    sget-boolean v14, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "===="

    invoke-static {v14}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v15

    move/from16 v16, v3

    :goto_2
    move/from16 v17, v16

    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v6, v17

    if-ge v6, v3, :cond_5

    sget-boolean v3, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string/jumbo v0, "on "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    move-object/from16 v18, v0

    :goto_3
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v6, 0x1

    move-object/from16 v0, v18

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_2

    :cond_5
    move-object/from16 v18, v0

    const/4 v0, 0x1

    invoke-virtual {v1, v14, v0, v11}, Lcom/oneplus/server/TriggerManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    add-int/lit8 v13, v13, 0x1

    move v6, v0

    move-object/from16 v0, v18

    const/4 v3, 0x0

    goto :goto_1

    :cond_6
    move-object/from16 v18, v0

    move v0, v6

    const-string/jumbo v3, "off"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_a

    sget-boolean v13, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v13, :cond_7

    const-string v13, "===="

    invoke-static {v13}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    const/4 v15, 0x0

    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_9

    sget-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "off "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    goto :goto_5

    :cond_9
    const/4 v0, 0x2

    invoke-virtual {v1, v13, v0, v11}, Lcom/oneplus/server/TriggerManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    goto :goto_4

    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    :cond_b
    monitor-exit p0

    goto :goto_6

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolve local config error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method private final prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OPFunction;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_8

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v4

    if-ne v4, v3, :cond_3

    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting REPEAT function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    if-eqz p4, :cond_2

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->incCount()V

    goto/16 :goto_4

    :cond_3
    if-nez v0, :cond_6

    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting ONESHOT function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    if-eqz p4, :cond_5

    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    :goto_2
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->incCount()V

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    :cond_6
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ONESHOT function "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " already running"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    goto :goto_4

    :cond_8
    if-eq v1, v3, :cond_9

    if-nez v1, :cond_e

    :cond_9
    if-eqz v0, :cond_e

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "stoping ONESHOT function "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_a
    if-eqz v1, :cond_c

    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    if-eqz p4, :cond_b

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_4

    :cond_b
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_4

    :cond_c
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v2

    if-eqz v2, :cond_e

    if-eqz p4, :cond_d

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_3

    :cond_d
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    :goto_3
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    :cond_e
    :goto_4
    return-void
.end method

.method private final prepareFunctionDone()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0}, Lcom/oneplus/server/RunningPool;->prepareActionDone()V

    return-void
.end method

.method private registerFunctionExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/FunctionManager;->addFunction(Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method private registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/FunctionManager;->addFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Register func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    return v1
.end method

.method private registerModeInt(Lcom/oneplus/server/SceneMode;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->addMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Register mode failed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v0, v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registered mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    return v0
.end method

.method private removeRuleInt(Lcom/oneplus/server/Rule;)Z
    .locals 9

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/RuleManager;->removeRule(Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "Remove rule failed"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v2

    move v3, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string/jumbo v6, "rule in enable table is broken"

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-gt v7, v5, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    add-int/lit8 v8, v7, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v3, :cond_6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removed rule, function "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    const-string v4, "DISABLE: "

    goto :goto_2

    :cond_4
    const-string v4, "ENABLE: "

    :goto_2
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    nop

    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/oneplus/server/SceneMode;

    invoke-virtual {v6}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "    "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_6
    return v5
.end method

.method private removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/server/RuleManager;->getRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v1

    if-ne v1, p3, :cond_2

    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->removeRuleInt(Lcom/oneplus/server/Rule;)Z

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/MsgObjectArg;",
            "I)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/RuleManager;->getRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v1

    if-ne v1, p5, :cond_2

    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->removeRuleInt(Lcom/oneplus/server/Rule;)Z

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    :cond_1
    const/4 v1, 0x1

    return v1

    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private removeRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v1

    return v1
.end method

.method private removeRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private removeRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private runRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 6

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v3, v4, v5, p3}, Lcom/oneplus/server/RuleManager;->tryConstructRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    return v1

    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    :cond_4
    return v2
.end method

.method private runRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->runRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private final triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    return-void
.end method

.method private unBindRemoteAction(Ljava/lang/String;)Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unbind for remote func "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed, function is not found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    instance-of v3, v2, Lcom/oneplus/oimc/OIMCRemoteFunc;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Lcom/oneplus/oimc/OIMCRemoteFunc;

    invoke-virtual {v1}, Lcom/oneplus/oimc/OIMCRemoteFunc;->unBindRemoteAction()Z

    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbind for remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    nop

    const/4 v1, 0x1

    return v1

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unbind for remote func "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " failed, not an OIMCRemoteFunc type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v1
.end method

.method private userSwitch(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0}, Lcom/oneplus/server/ModeManager;->getCurrUserModeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v1, Lcom/oneplus/server/SceneMode;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    :cond_1
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2}, Lcom/oneplus/server/ModeManager;->getCurrUserModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/oneplus/server/TriggerManager;->modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->setCurrUserMode(Ljava/lang/String;)V

    return-void
.end method

.method private writeLocalConfig()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->getConfigFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->genCustomConfigString()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    sget-boolean v5, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "writeLocalConfig complete"

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v4

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_1
    const-string v5, "Failed to write local config"

    invoke-static {v5, v4}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")",
            "Lcom/oneplus/server/Rule;"
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/TriggerManager;->doDumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/TriggerManager;->doGetFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/TriggerManager;->doGetSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public parseOnlineConfig(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "force_disable_func_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    sget-boolean v7, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "onlineconfig disable "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    const/4 v5, 0x2

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->applyOnlineConfig(Landroid/util/ArraySet;I)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "apply onlineconfig done"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolve online config error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public readLocalConfig()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mSystemDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/oneplus/server/TriggerManager;->getConfigFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "load default config"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    const/16 v4, 0x400

    new-array v4, v4, [C

    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_0
    invoke-virtual {v5, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    move v7, v6

    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/server/TriggerManager;->parseLocalConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_1
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "read json config error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :goto_2
    return-void

    :goto_3
    nop

    if-eqz v0, :cond_2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    nop

    :cond_2
    :goto_4
    throw v1
.end method

.method public registerFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/TriggerManager;->registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/server/TriggerManager;->registerModeInt(Lcom/oneplus/server/SceneMode;)Z

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTrigger(Landroid/os/Message;)Z
    .locals 10

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->getModeType(I)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->getMajorType(I)I

    move-result v1

    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    xor-int/2addr v2, v4

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Test mode: discard message "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return v3

    :cond_1
    const/4 v2, 0x0

    monitor-enter p0

    const/16 v3, 0x2710

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "major type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " is not supported"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    goto/16 :goto_2

    :pswitch_0
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->unBindRemoteAction(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/os/IOIMCRemoteAction;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_3
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_4
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->addRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_5
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_6
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->addRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->writeLocalConfig()V

    goto/16 :goto_1

    :pswitch_8
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_9
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    iget v5, p1, Landroid/os/Message;->arg2:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->addRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->userSwitch(I)V

    goto/16 :goto_1

    :pswitch_b
    goto/16 :goto_1

    :pswitch_c
    invoke-virtual {p0}, Lcom/oneplus/server/TriggerManager;->readLocalConfig()V

    goto/16 :goto_1

    :pswitch_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->registerFunctionExt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/oimc/IOPFunction;

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->registerModeInt(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_10
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->funcConfig(Ljava/lang/String;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_11
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->funcConfig(Ljava/lang/String;Lcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto/16 :goto_1

    :pswitch_12
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Lcom/oneplus/server/MsgObjectArg;

    iget v9, p1, Landroid/os/Message;->arg2:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    goto :goto_1

    :pswitch_13
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Ljava/util/ArrayList;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Lcom/oneplus/server/MsgObjectArg;

    iget v9, p1, Landroid/os/Message;->arg2:I

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    goto :goto_1

    :pswitch_14
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeTransition(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto :goto_1

    :pswitch_15
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3, v4}, Lcom/oneplus/server/TriggerManager;->modeConfig(IILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto :goto_1

    :pswitch_16
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto :goto_1

    :pswitch_17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeExit(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto :goto_1

    :pswitch_18
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeEnter(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    goto :goto_1

    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/OPFunction;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->flushLoop(Lcom/oneplus/server/OPFunction;)V

    nop

    :goto_1
    monitor-exit p0

    return v2

    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x65
        :pswitch_13
        :pswitch_12
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x68
        :pswitch_11
        :pswitch_10
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0xc9
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0xd0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
