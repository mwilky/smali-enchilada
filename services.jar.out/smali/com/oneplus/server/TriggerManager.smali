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
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mm"    # Lcom/oneplus/server/ModeManager;
    .param p3, "fm"    # Lcom/oneplus/server/FunctionManager;
    .param p4, "rm"    # Lcom/oneplus/server/RuleManager;

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    sget-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    iput-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 78
    iput-object p1, p0, Lcom/oneplus/server/TriggerManager;->mContext:Landroid/content/Context;

    .line 79
    iput-object p2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    .line 80
    iput-object p3, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    .line 81
    iput-object p4, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    .line 83
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    .line 84
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    .line 85
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    .line 87
    new-instance v0, Lcom/oneplus/server/RunningPool;

    invoke-direct {v0, p1}, Lcom/oneplus/server/RunningPool;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    .line 88
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0}, Lcom/oneplus/server/RunningPool;->start()V

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mDataDir:Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/TriggerManager;->mSystemDir:Ljava/io/File;

    .line 92
    return-void
.end method

.method private addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;
    .locals 7
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "sourceFlag"    # I
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

    .line 713
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/server/RuleManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 714
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_0

    .line 715
    const/4 v1, 0x0

    return-object v1

    .line 717
    :cond_0
    invoke-virtual {v0, p4}, Lcom/oneplus/server/Rule;->setSourceFlag(I)V

    .line 719
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v1

    .line 720
    .local v1, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 721
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 722
    .local v3, "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 723
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 724
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 725
    .local v4, "count":I
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 726
    .end local v4    # "count":I
    goto :goto_1

    .line 727
    :cond_1
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 720
    .end local v3    # "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 731
    .end local v2    # "i":I
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

    .line 732
    :cond_3
    return-object v0
.end method

.method private addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "sourceFlag"    # I

    .line 759
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 760
    return v1

    .line 762
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 763
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v3

    .line 762
    invoke-direct {p0, v0, v2, v3, p3}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 764
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_1

    .line 765
    return v1

    .line 767
    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getStartConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setStartConfig(Ljava/lang/String;)V

    .line 768
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getStopConfig()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setStopConfig(Ljava/lang/String;)V

    .line 769
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    .line 770
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 772
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 773
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 774
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 775
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

    .line 777
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p5, "sourceFlag"    # I
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

    .line 781
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 782
    return v1

    .line 784
    :cond_0
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 785
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_1

    .line 786
    return v1

    .line 788
    :cond_1
    invoke-virtual {p4}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    .line 789
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 791
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 792
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 793
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    .line 794
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

    .line 797
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method private addRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 3
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "userId"    # I

    .line 841
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 842
    .local v0, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 843
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v1

    return v1
.end method

.method private addRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 865
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private addRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 853
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private applyOnlineConfig(Landroid/util/ArraySet;I)V
    .locals 11
    .param p2, "action"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .line 1225
    .local p1, "configSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    .line 1226
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p2}, Lcom/oneplus/server/RuleManager;->getRuleSet(II)Landroid/util/ArraySet;

    move-result-object v0

    .line 1227
    .local v0, "currRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1228
    .local v1, "pendingRemove":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    .line 1230
    .local v3, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1231
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1233
    :cond_0
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1235
    .end local v3    # "rule":Lcom/oneplus/server/Rule;
    :goto_1
    goto :goto_0

    .line 1237
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1238
    .local v2, "mode":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "SystemMode"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1239
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

    .line 1241
    .local v10, "rule":Lcom/oneplus/server/Rule;
    nop

    .line 1242
    invoke-virtual {v10}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 1241
    move-object v3, p0

    move-object v4, v2

    move v5, p2

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    .line 1243
    .end local v10    # "rule":Lcom/oneplus/server/Rule;
    goto :goto_2

    .line 1245
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

    .line 1247
    .local v10, "targetFunc":Ljava/lang/String;
    nop

    .line 1248
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const/4 v8, 0x1

    .line 1247
    move-object v3, p0

    move-object v4, v2

    move v5, p2

    move-object v6, v10

    invoke-direct/range {v3 .. v8}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    .line 1250
    .end local v10    # "targetFunc":Ljava/lang/String;
    goto :goto_3

    .line 1251
    :cond_3
    return-void
.end method

.method private bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 593
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 594
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 595
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

    .line 596
    return v1

    .line 599
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    .line 600
    .local v2, "iop":Lcom/oneplus/oimc/IOPFunction;
    instance-of v3, v2, Lcom/oneplus/oimc/OIMCRemoteFunc;

    if-eqz v3, :cond_2

    .line 601
    move-object v1, v2

    check-cast v1, Lcom/oneplus/oimc/OIMCRemoteFunc;

    .line 602
    .local v1, "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    invoke-virtual {v1, p2}, Lcom/oneplus/oimc/OIMCRemoteFunc;->bindRemoteAction(Lcom/oneplus/os/IOIMCRemoteAction;)Z

    .line 604
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    .line 605
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

    .line 607
    .end local v1    # "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    :cond_1
    nop

    .line 611
    const/4 v1, 0x1

    return v1

    .line 608
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

    .line 609
    return v1
.end method

.method private calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;
    .locals 10
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "extraRule"    # Lcom/oneplus/server/Rule;

    .line 98
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 99
    .local v0, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    const/16 v1, 0xff

    .line 100
    .local v1, "eprio":I
    const/16 v2, 0xff

    .line 101
    .local v2, "dprio":I
    const/4 v3, 0x0

    .line 102
    .local v3, "r_enable":Lcom/oneplus/server/Rule;
    const/4 v4, 0x0

    .line 103
    .local v4, "r_disable":Lcom/oneplus/server/Rule;
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

    .line 104
    .local v6, "r":Lcom/oneplus/server/Rule;
    invoke-virtual {v6}, Lcom/oneplus/server/Rule;->getRulePrio()I

    move-result v8

    .line 105
    .local v8, "prio":I
    invoke-virtual {v6}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v9

    if-ne v9, v7, :cond_0

    .line 106
    invoke-static {v2, v8}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v7

    if-gez v7, :cond_1

    .line 107
    move v2, v8

    .line 108
    move-object v4, v6

    goto :goto_1

    .line 111
    :cond_0
    invoke-static {v1, v8}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v7

    if-gez v7, :cond_1

    .line 112
    move v1, v8

    .line 113
    move-object v3, v6

    .line 116
    .end local v6    # "r":Lcom/oneplus/server/Rule;
    .end local v8    # "prio":I
    :cond_1
    :goto_1
    goto :goto_0

    .line 118
    :cond_2
    if-eqz p2, :cond_4

    .line 119
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRulePrio()I

    move-result v5

    .line 120
    .local v5, "prio":I
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v6

    if-ne v6, v7, :cond_3

    .line 121
    invoke-static {v2, v5}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v6

    if-gez v6, :cond_4

    .line 122
    move v2, v5

    .line 123
    move-object v4, p2

    goto :goto_2

    .line 126
    :cond_3
    invoke-static {v1, v5}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v6

    if-gez v6, :cond_4

    .line 127
    move v1, v5

    .line 128
    move-object v3, p2

    .line 133
    .end local v5    # "prio":I
    :cond_4
    :goto_2
    const/16 v5, 0xff

    if-ne v1, v5, :cond_6

    .line 134
    if-ne v2, v5, :cond_5

    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    move-object v5, v4

    :goto_3
    return-object v5

    .line 136
    :cond_6
    if-ne v2, v5, :cond_7

    .line 137
    return-object v3

    .line 139
    :cond_7
    invoke-static {v1, v2}, Lcom/oneplus/server/SceneMode;->comparePrio(II)I

    move-result v5

    if-lez v5, :cond_8

    .line 140
    return-object v3

    .line 142
    :cond_8
    return-object v4
.end method

.method private doDumpRunningFunctions(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 672
    const-string v0, "Current Running Functions: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 673
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

    .line 674
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 675
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 676
    :cond_0
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 677
    return-void
.end method

.method private doDumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 691
    const-string v0, "================ Dumping OIMC Information ================="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 693
    and-int/lit8 v0, p1, 0x8

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 694
    invoke-direct {p0, p3}, Lcom/oneplus/server/TriggerManager;->doDumpSystemMode(Ljava/io/PrintWriter;)V

    .line 696
    :cond_0
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 697
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/ModeManager;->dumpAllModes(Ljava/io/PrintWriter;)V

    .line 699
    :cond_1
    and-int/lit8 v0, p1, 0x2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 700
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/FunctionManager;->dumpAllFunctions(Ljava/io/PrintWriter;)V

    .line 702
    :cond_2
    and-int/lit8 v0, p1, 0x4

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 703
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/RuleManager;->dump(Ljava/io/PrintWriter;)V

    .line 705
    :cond_3
    and-int/lit8 v0, p1, 0x10

    const/16 v1, 0x10

    if-ne v0, v1, :cond_4

    .line 706
    invoke-direct {p0, p3}, Lcom/oneplus/server/TriggerManager;->doDumpRunningFunctions(Ljava/io/PrintWriter;)V

    .line 708
    :cond_4
    and-int/lit8 v0, p1, 0x20

    const/16 v1, 0x20

    if-ne v0, v1, :cond_5

    .line 709
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0, p3}, Lcom/oneplus/server/RunningPool;->dump(Ljava/io/PrintWriter;)V

    .line 710
    :cond_5
    return-void
.end method

.method private doDumpSystemMode(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 680
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
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

    .line 682
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->dumpCurrNonSysModes(Ljava/io/PrintWriter;)V

    .line 683
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->dumpCurrUserMode(Ljava/io/PrintWriter;)V

    .line 684
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 686
    :cond_0
    const-string v0, "Current System Mode is unset"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 688
    :goto_0
    return-void
.end method

.method private doGetFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 3
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 637
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 638
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 639
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    .line 640
    :cond_0
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 641
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    goto :goto_0

    .line 643
    :cond_1
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 646
    :goto_0
    return v2
.end method

.method private doGetSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 2
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 650
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 651
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 652
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 653
    return v0

    .line 654
    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 655
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 656
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 657
    return v0

    .line 658
    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_2

    .line 659
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 660
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 661
    return v0

    .line 662
    :cond_2
    const/16 v1, 0x8

    if-ne p1, v1, :cond_3

    .line 663
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 664
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 665
    return v0

    .line 668
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private doModeSwitchUpdate(ILcom/oneplus/server/SceneMode;Lcom/oneplus/server/SceneMode;Ljava/lang/Object;)V
    .locals 8
    .param p1, "act"    # I
    .param p2, "oMode"    # Lcom/oneplus/server/SceneMode;
    .param p3, "nMode"    # Lcom/oneplus/server/SceneMode;
    .param p4, "arg"    # Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 297
    .local v0, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/Rule;

    .line 298
    .local v2, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 299
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 300
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 301
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 303
    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 304
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 305
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 307
    .end local v2    # "rule":Lcom/oneplus/server/Rule;
    :cond_1
    :goto_1
    goto :goto_0

    .line 310
    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/util/HashSet;

    .line 311
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/Rule;

    .line 312
    .restart local v2    # "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 313
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 314
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 317
    :cond_3
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 318
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 319
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 321
    .end local v2    # "rule":Lcom/oneplus/server/Rule;
    :cond_4
    :goto_3
    goto :goto_2

    .line 323
    :cond_5
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 324
    .local v1, "oflist":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
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

    .line 325
    .local v3, "func":Lcom/oneplus/server/OPFunction;
    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_6

    .line 326
    goto :goto_4

    .line 328
    :cond_6
    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5, p4, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 329
    .end local v3    # "func":Lcom/oneplus/server/OPFunction;
    goto :goto_4

    .line 331
    :cond_7
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 332
    .local v2, "nflist":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
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

    .line 333
    .local v6, "func":Lcom/oneplus/server/OPFunction;
    invoke-direct {p0, v6, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v7

    invoke-direct {p0, v6, v7, p4, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 334
    .end local v6    # "func":Lcom/oneplus/server/OPFunction;
    goto :goto_5

    .line 336
    :cond_8
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->prepareFunctionDone()V

    .line 337
    return-void
.end method

.method private doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V
    .locals 7
    .param p1, "act"    # I
    .param p2, "mode"    # Lcom/oneplus/server/SceneMode;
    .param p3, "arg"    # Ljava/lang/Object;

    .line 264
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 267
    .local v0, "flist":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 268
    .local v1, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    .line 269
    .local v3, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 270
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 271
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 272
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 274
    :cond_0
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 275
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 276
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    invoke-virtual {v4, v3}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 278
    .end local v3    # "rule":Lcom/oneplus/server/Rule;
    :cond_1
    :goto_1
    goto :goto_0

    .line 280
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

    .line 281
    .local v3, "func":Lcom/oneplus/server/OPFunction;
    const/4 v4, 0x1

    if-eq p1, v4, :cond_3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_3

    .line 282
    goto :goto_2

    .line 284
    :cond_3
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v5

    invoke-direct {p0, v3, v5, p3, v4}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 285
    .end local v3    # "func":Lcom/oneplus/server/OPFunction;
    goto :goto_2

    .line 287
    :cond_4
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->prepareFunctionDone()V

    .line 288
    return-void
.end method

.method private flushLoop(Lcom/oneplus/server/OPFunction;)V
    .locals 3
    .param p1, "f"    # Lcom/oneplus/server/OPFunction;

    .line 913
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 914
    return-void
.end method

.method private funcConfig(Ljava/lang/String;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 873
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 874
    .local v0, "f":Lcom/oneplus/server/OPFunction;
    if-eqz v0, :cond_0

    .line 875
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    const/4 v2, 0x3

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 876
    const/4 v1, 0x1

    return v1

    .line 879
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private genCustomConfigString()Ljava/lang/String;
    .locals 19

    .line 1113
    move-object/from16 v1, p0

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 1114
    .local v0, "contentArray":Lorg/json/JSONArray;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1115
    .local v2, "version":Lorg/json/JSONObject;
    const-string/jumbo v3, "version"

    const-string v4, "1.0"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1116
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1118
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 1119
    .local v3, "content":Lorg/json/JSONObject;
    new-instance v4, Lorg/json/JSONArray;

    invoke-direct {v4}, Lorg/json/JSONArray;-><init>()V

    .line 1121
    .local v4, "functionList":Lorg/json/JSONArray;
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

    .line 1122
    .local v6, "funcName":Ljava/lang/String;
    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7}, Lorg/json/JSONObject;-><init>()V

    .line 1123
    .local v7, "funcObj":Lorg/json/JSONObject;
    const-string/jumbo v8, "name"

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1124
    iget-object v8, v1, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    const/4 v9, 0x1

    .line 1125
    const/4 v10, 0x0

    invoke-virtual {v8, v6, v10, v9}, Lcom/oneplus/server/RuleManager;->getRuleSetByFunc(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v8

    .line 1126
    .local v8, "enableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 1127
    .local v9, "onArray":Lorg/json/JSONArray;
    invoke-virtual {v8}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_1
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/server/Rule;

    .line 1128
    .local v12, "rule":Lcom/oneplus/server/Rule;
    new-instance v13, Lorg/json/JSONArray;

    invoke-direct {v13}, Lorg/json/JSONArray;-><init>()V

    .line 1129
    .local v13, "modeArray":Lorg/json/JSONArray;
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

    .line 1130
    .local v15, "mode":Lcom/oneplus/server/SceneMode;
    invoke-virtual {v15}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v13, v10}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1131
    .end local v15    # "mode":Lcom/oneplus/server/SceneMode;
    nop

    .line 1129
    const/4 v10, 0x0

    goto :goto_2

    .line 1132
    :cond_0
    invoke-virtual {v9, v13}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1133
    .end local v12    # "rule":Lcom/oneplus/server/Rule;
    .end local v13    # "modeArray":Lorg/json/JSONArray;
    nop

    .line 1127
    const/4 v10, 0x0

    goto :goto_1

    .line 1134
    :cond_1
    const-string/jumbo v10, "on"

    invoke-virtual {v7, v10, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1136
    iget-object v10, v1, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    const/4 v11, 0x2

    .line 1137
    const/4 v12, 0x0

    invoke-virtual {v10, v6, v12, v11}, Lcom/oneplus/server/RuleManager;->getRuleSetByFunc(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v10

    .line 1138
    .local v10, "disableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    new-instance v11, Lorg/json/JSONArray;

    invoke-direct {v11}, Lorg/json/JSONArray;-><init>()V

    .line 1139
    .local v11, "offArray":Lorg/json/JSONArray;
    invoke-virtual {v10}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_3
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/oneplus/server/Rule;

    .line 1140
    .local v13, "rule":Lcom/oneplus/server/Rule;
    new-instance v14, Lorg/json/JSONArray;

    invoke-direct {v14}, Lorg/json/JSONArray;-><init>()V

    .line 1141
    .local v14, "modeArray":Lorg/json/JSONArray;
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

    .line 1142
    .local v17, "mode":Lcom/oneplus/server/SceneMode;
    move-object/from16 v18, v2

    move-object/from16 v1, v17

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1142
    .end local v2    # "version":Lorg/json/JSONObject;
    .end local v17    # "mode":Lcom/oneplus/server/SceneMode;
    .local v1, "mode":Lcom/oneplus/server/SceneMode;
    .local v18, "version":Lorg/json/JSONObject;
    invoke-virtual {v14, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1143
    .end local v1    # "mode":Lcom/oneplus/server/SceneMode;
    nop

    .line 1141
    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto :goto_4

    .line 1144
    .end local v18    # "version":Lorg/json/JSONObject;
    .restart local v2    # "version":Lorg/json/JSONObject;
    :cond_2
    move-object/from16 v18, v2

    .line 1144
    .end local v2    # "version":Lorg/json/JSONObject;
    .restart local v18    # "version":Lorg/json/JSONObject;
    invoke-virtual {v11, v14}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1145
    .end local v13    # "rule":Lcom/oneplus/server/Rule;
    .end local v14    # "modeArray":Lorg/json/JSONArray;
    nop

    .line 1139
    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto :goto_3

    .line 1146
    .end local v18    # "version":Lorg/json/JSONObject;
    .restart local v2    # "version":Lorg/json/JSONObject;
    :cond_3
    move-object/from16 v18, v2

    .line 1146
    .end local v2    # "version":Lorg/json/JSONObject;
    .restart local v18    # "version":Lorg/json/JSONObject;
    const-string/jumbo v1, "off"

    invoke-virtual {v7, v1, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1148
    invoke-virtual {v4, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1149
    .end local v6    # "funcName":Ljava/lang/String;
    .end local v7    # "funcObj":Lorg/json/JSONObject;
    .end local v8    # "enableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    .end local v9    # "onArray":Lorg/json/JSONArray;
    .end local v10    # "disableRules":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    .end local v11    # "offArray":Lorg/json/JSONArray;
    nop

    .line 1121
    move-object/from16 v2, v18

    move-object/from16 v1, p0

    goto/16 :goto_0

    .line 1151
    .end local v18    # "version":Lorg/json/JSONObject;
    .restart local v2    # "version":Lorg/json/JSONObject;
    :cond_4
    move-object/from16 v18, v2

    .line 1151
    .end local v2    # "version":Lorg/json/JSONObject;
    .restart local v18    # "version":Lorg/json/JSONObject;
    const-string v1, "Functionlist"

    invoke-virtual {v3, v1, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1152
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 1153
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

    .line 1155
    :cond_5
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1157
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .end local v3    # "content":Lorg/json/JSONObject;
    .end local v4    # "functionList":Lorg/json/JSONArray;
    .end local v18    # "version":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 1158
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error while write config"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1159
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1161
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method private getConfigFile(Ljava/io/File;)Ljava/io/File;
    .locals 2
    .param p1, "dir"    # Ljava/io/File;

    .line 1286
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "oimc.json"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method private modeConfig(IILcom/oneplus/server/MsgObjectArg;)Z
    .locals 5
    .param p1, "act"    # I
    .param p2, "prio"    # I
    .param p3, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 488
    invoke-virtual {p3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 489
    .local v0, "mName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    .line 490
    .local v1, "mode":Lcom/oneplus/server/SceneMode;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 491
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

    .line 492
    return v2

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 496
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, can\'t change system mode priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 497
    return v2

    .line 500
    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getPrio()I

    move-result v3

    if-ne v3, p2, :cond_2

    .line 501
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Config mode failed, same priority: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 502
    return v2

    .line 505
    :cond_2
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_3

    .line 506
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

    .line 508
    :cond_3
    invoke-virtual {v1, p2}, Lcom/oneplus/server/SceneMode;->setPrio(I)V

    .line 509
    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 510
    const/4 v2, 0x1

    return v2
.end method

.method private modeEnter(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 5
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 340
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 341
    .local v0, "mName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 342
    const-string v2, "Mode enter failed, mode is null"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 343
    return v1

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    .line 347
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    if-nez v2, :cond_1

    .line 348
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

    .line 349
    return v1

    .line 352
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 353
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

    .line 354
    return v1

    .line 358
    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v2}, Lcom/oneplus/server/ModeManager;->isSystemMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 359
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 360
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[Warning] Use mode switch to change between system modes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 361
    return v1

    .line 364
    :cond_3
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/server/ModeManager;->setSystemMode(Lcom/oneplus/server/SceneMode;)V

    .line 367
    :cond_4
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_5

    .line 368
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

    .line 370
    :cond_5
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 371
    iput-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 373
    :cond_6
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isMainUserMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 374
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->setCurrUserMode(Ljava/lang/String;)V

    .line 377
    :cond_7
    invoke-virtual {v2, v4}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 378
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 379
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    .line 380
    .local v1, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v4

    if-gtz v4, :cond_8

    .line 381
    return v3

    .line 383
    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p1, v2, v4}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 384
    return v3
.end method

.method private modeExit(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 6
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 388
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 389
    .local v0, "mName":Ljava/lang/String;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 390
    const-string v2, "Mode enter failed, mode is null"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 391
    return v1

    .line 394
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    .line 395
    .local v2, "mode":Lcom/oneplus/server/SceneMode;
    if-nez v2, :cond_1

    .line 396
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

    .line 397
    return v1

    .line 400
    :cond_1
    invoke-virtual {v2}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_2

    .line 401
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

    .line 402
    return v1

    .line 405
    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t exit system mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 407
    return v1

    .line 410
    :cond_3
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_4

    .line 411
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exiting mode "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 413
    :cond_4
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 414
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 415
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 416
    .local v4, "rules":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v4}, Ljava/util/HashSet;->size()I

    move-result v5

    if-lez v5, :cond_5

    .line 417
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v2, v5}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 419
    :cond_5
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 420
    iput-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 422
    :cond_6
    return v3
.end method

.method private modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 8
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 426
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 430
    .local v0, "nName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 431
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1}, Lcom/oneplus/server/ModeManager;->getCurrentSystemMode()Lcom/oneplus/server/SceneMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getName()Ljava/lang/String;

    move-result-object v1

    .local v1, "oName":Ljava/lang/String;
    goto :goto_0

    .line 433
    .end local v1    # "oName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 436
    .restart local v1    # "oName":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    if-eqz v1, :cond_b

    if-nez v0, :cond_1

    goto/16 :goto_2

    .line 441
    :cond_1
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v3

    .line 442
    .local v3, "nMode":Lcom/oneplus/server/SceneMode;
    if-nez v3, :cond_2

    .line 443
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

    .line 444
    return v2

    .line 447
    :cond_2
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v4, v1}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v4

    .line 448
    .local v4, "oMode":Lcom/oneplus/server/SceneMode;
    if-nez v4, :cond_3

    .line 449
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

    .line 450
    return v2

    .line 453
    :cond_3
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 454
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mode switch failed, mode is same: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 455
    return v2

    .line 458
    :cond_4
    invoke-virtual {v4}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_a

    .line 459
    invoke-virtual {v3}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v5

    if-ne v5, v6, :cond_5

    goto :goto_1

    .line 465
    :cond_5
    iget-boolean v5, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v5, :cond_6

    .line 466
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

    .line 468
    :cond_6
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_7

    .line 469
    iput-boolean v7, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 471
    :cond_7
    invoke-virtual {v3, v6}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 472
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 473
    invoke-virtual {v4, v7}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 474
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 476
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 477
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v3}, Lcom/oneplus/server/ModeManager;->setSystemMode(Lcom/oneplus/server/SceneMode;)V

    .line 480
    :cond_8
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {p0, p1, v4, v3, v5}, Lcom/oneplus/server/TriggerManager;->doModeSwitchUpdate(ILcom/oneplus/server/SceneMode;Lcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 481
    iget-object v5, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v5, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 482
    iput-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 484
    :cond_9
    return v7

    .line 460
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

    .line 462
    return v2

    .line 437
    .end local v3    # "nMode":Lcom/oneplus/server/SceneMode;
    .end local v4    # "oMode":Lcom/oneplus/server/SceneMode;
    :cond_b
    :goto_2
    const-string v3, "Mode switch failed, mode missed"

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 438
    return v2
.end method

.method private modeTransition(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 6
    .param p1, "act"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 514
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 515
    .local v0, "mName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    .line 516
    .local v1, "mode":Lcom/oneplus/server/SceneMode;
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 517
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

    .line 518
    return v2

    .line 521
    :cond_0
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v0}, Lcom/oneplus/server/ModeManager;->isSystemMode(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 522
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No mode transition for system mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 523
    return v2

    .line 526
    :cond_1
    invoke-virtual {v1}, Lcom/oneplus/server/SceneMode;->getStatus()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    .line 527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t do transition, mode already entered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 528
    return v2

    .line 531
    :cond_2
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_3

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Transiting mode "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 534
    :cond_3
    invoke-virtual {v1, v4}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 535
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 536
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    .line 537
    iput-boolean v5, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 538
    :cond_4
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v5, v1, v3}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 540
    invoke-virtual {v1, v5}, Lcom/oneplus/server/SceneMode;->setStatus(I)V

    .line 541
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/oneplus/server/SceneMode;->setRinfo(Ljava/lang/Object;)V

    .line 542
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-direct {p0, v4, v1, v3}, Lcom/oneplus/server/TriggerManager;->doModeUpdate(ILcom/oneplus/server/SceneMode;Ljava/lang/Object;)V

    .line 544
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v3, v1}, Lcom/oneplus/server/ModeManager;->isTestMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 545
    iput-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->mInTestMode:Z

    .line 548
    :cond_5
    return v5
.end method

.method private parseLocalConfig(Ljava/lang/String;)V
    .locals 20
    .param p1, "configStr"    # Ljava/lang/String;

    move-object/from16 v1, p0

    .line 1166
    :try_start_0
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1167
    const-string/jumbo v0, "local config is empty!"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1168
    return-void

    .line 1171
    :cond_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1172
    :try_start_1
    new-instance v0, Lorg/json/JSONArray;

    move-object/from16 v2, p1

    invoke-direct {v0, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1175
    .local v0, "contentArray":Lorg/json/JSONArray;
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    .line 1176
    .local v4, "version":Lorg/json/JSONObject;
    const-string/jumbo v5, "version"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1177
    .local v5, "verStr":Ljava/lang/String;
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

    .line 1179
    :cond_1
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v7

    .line 1180
    .local v7, "functions":Lorg/json/JSONObject;
    if-eqz v7, :cond_b

    .line 1181
    const-string v8, "Functionlist"

    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    .line 1182
    .local v8, "functionlist":Lorg/json/JSONArray;
    move v9, v3

    .line 1182
    .local v9, "fidx":I
    :goto_0
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_b

    .line 1184
    invoke-virtual {v8, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    .line 1185
    .local v10, "function":Lorg/json/JSONObject;
    const-string/jumbo v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1186
    .local v11, "funcName":Ljava/lang/String;
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

    .line 1187
    :cond_2
    const-string/jumbo v12, "on"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    .line 1188
    .local v12, "onArray":Lorg/json/JSONArray;
    move v13, v3

    .line 1188
    .local v13, "idx":I
    :goto_1
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v13, v14, :cond_6

    .line 1189
    sget-boolean v14, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v14, :cond_3

    const-string v14, "===="

    invoke-static {v14}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1190
    :cond_3
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 1191
    .local v14, "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v12, v13}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v15

    .line 1192
    .local v15, "innerarray":Lorg/json/JSONArray;
    move/from16 v16, v3

    .line 1192
    .local v16, "iidx":I
    :goto_2
    move/from16 v17, v16

    .line 1192
    .end local v16    # "iidx":I
    .local v17, "iidx":I
    invoke-virtual {v15}, Lorg/json/JSONArray;->length()I

    move-result v3

    move/from16 v6, v17

    if-ge v6, v3, :cond_5

    .line 1193
    .end local v17    # "iidx":I
    .local v6, "iidx":I
    sget-boolean v3, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v0

    const-string/jumbo v0, "on "

    .line 1193
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .local v18, "contentArray":Lorg/json/JSONArray;
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1194
    .end local v18    # "contentArray":Lorg/json/JSONArray;
    .restart local v0    # "contentArray":Lorg/json/JSONArray;
    :cond_4
    move-object/from16 v18, v0

    .line 1194
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .restart local v18    # "contentArray":Lorg/json/JSONArray;
    :goto_3
    invoke-virtual {v15, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1192
    add-int/lit8 v16, v6, 0x1

    .line 1192
    .end local v6    # "iidx":I
    .restart local v16    # "iidx":I
    move-object/from16 v0, v18

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto :goto_2

    .line 1196
    .end local v16    # "iidx":I
    .end local v18    # "contentArray":Lorg/json/JSONArray;
    .restart local v0    # "contentArray":Lorg/json/JSONArray;
    :cond_5
    move-object/from16 v18, v0

    .line 1196
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .restart local v18    # "contentArray":Lorg/json/JSONArray;
    const/4 v0, 0x1

    invoke-virtual {v1, v14, v0, v11}, Lcom/oneplus/server/TriggerManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    .line 1188
    .end local v14    # "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v15    # "innerarray":Lorg/json/JSONArray;
    add-int/lit8 v13, v13, 0x1

    move v6, v0

    move-object/from16 v0, v18

    const/4 v3, 0x0

    goto :goto_1

    .line 1199
    .end local v13    # "idx":I
    .end local v18    # "contentArray":Lorg/json/JSONArray;
    .restart local v0    # "contentArray":Lorg/json/JSONArray;
    :cond_6
    move-object/from16 v18, v0

    move v0, v6

    .line 1199
    .end local v0    # "contentArray":Lorg/json/JSONArray;
    .restart local v18    # "contentArray":Lorg/json/JSONArray;
    const-string/jumbo v3, "off"

    invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 1200
    .local v3, "offArray":Lorg/json/JSONArray;
    const/4 v6, 0x0

    .line 1200
    .local v6, "idx":I
    :goto_4
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v13

    if-ge v6, v13, :cond_a

    .line 1201
    sget-boolean v13, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v13, :cond_7

    const-string v13, "===="

    invoke-static {v13}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1202
    :cond_7
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 1203
    .local v13, "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3, v6}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v14

    .line 1204
    .local v14, "innerarray":Lorg/json/JSONArray;
    const/4 v15, 0x0

    .line 1204
    .local v15, "iidx":I
    :goto_5
    invoke-virtual {v14}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-ge v15, v0, :cond_9

    .line 1205
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

    .line 1206
    :cond_8
    invoke-virtual {v14, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1204
    add-int/lit8 v15, v15, 0x1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    goto :goto_5

    .line 1208
    .end local v15    # "iidx":I
    :cond_9
    const/4 v0, 0x2

    invoke-virtual {v1, v13, v0, v11}, Lcom/oneplus/server/TriggerManager;->addRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    .line 1200
    .end local v13    # "modeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v14    # "innerarray":Lorg/json/JSONArray;
    add-int/lit8 v6, v6, 0x1

    const/4 v0, 0x1

    move-object/from16 v2, p1

    goto :goto_4

    .line 1182
    .end local v3    # "offArray":Lorg/json/JSONArray;
    .end local v6    # "idx":I
    .end local v10    # "function":Lorg/json/JSONObject;
    .end local v11    # "funcName":Ljava/lang/String;
    .end local v12    # "onArray":Lorg/json/JSONArray;
    :cond_a
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, v18

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v6, 0x1

    goto/16 :goto_0

    .line 1213
    .end local v4    # "version":Lorg/json/JSONObject;
    .end local v5    # "verStr":Ljava/lang/String;
    .end local v7    # "functions":Lorg/json/JSONObject;
    .end local v8    # "functionlist":Lorg/json/JSONArray;
    .end local v9    # "fidx":I
    .end local v18    # "contentArray":Lorg/json/JSONArray;
    :cond_b
    monitor-exit p0

    .line 1217
    goto :goto_6

    .line 1213
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1215
    :catch_0
    move-exception v0

    .line 1216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resolve local config error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1218
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_6
    return-void
.end method

.method private final prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V
    .locals 5
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "rule"    # Lcom/oneplus/server/Rule;
    .param p3, "obj"    # Ljava/lang/Object;
    .param p4, "buffered"    # Z

    .line 163
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OPFunction;

    .line 165
    .local v0, "rf":Lcom/oneplus/server/OPFunction;
    if-eqz p2, :cond_0

    .line 166
    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v1

    .line 166
    .local v1, "cstate":I
    goto :goto_0

    .line 168
    .end local v1    # "cstate":I
    :cond_0
    const/4 v1, 0x0

    .line 171
    .restart local v1    # "cstate":I
    :goto_0
    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ne v1, v2, :cond_8

    .line 172
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v4

    if-ne v4, v3, :cond_3

    .line 173
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    .line 174
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

    .line 175
    :cond_1
    if-eqz p4, :cond_2

    .line 176
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_1

    .line 178
    :cond_2
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 179
    :goto_1
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->incCount()V

    goto/16 :goto_4

    .line 180
    :cond_3
    if-nez v0, :cond_6

    .line 181
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_4

    .line 182
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

    .line 183
    :cond_4
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    .line 184
    if-eqz p4, :cond_5

    .line 185
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_2

    .line 187
    :cond_5
    iget-object v3, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStartConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, p1, v2, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 188
    :goto_2
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->incCount()V

    .line 189
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 191
    :cond_6
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_7

    .line 192
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

    .line 193
    :cond_7
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    goto :goto_4

    .line 195
    :cond_8
    if-eq v1, v3, :cond_9

    if-nez v1, :cond_e

    .line 196
    :cond_9
    if-eqz v0, :cond_e

    .line 197
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningFuncs:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-boolean v2, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v2, :cond_a

    .line 199
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

    .line 200
    :cond_a
    if-eqz v1, :cond_c

    .line 201
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    .line 202
    if-eqz p4, :cond_b

    .line 203
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_4

    .line 205
    :cond_b
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p2}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_4

    .line 207
    :cond_c
    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v2

    if-eqz v2, :cond_e

    .line 208
    if-eqz p4, :cond_d

    .line 209
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->prepareAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    goto :goto_3

    .line 211
    :cond_d
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {p1}, Lcom/oneplus/server/OPFunction;->getActionRule()Lcom/oneplus/server/Rule;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/Rule;->getStopConfig()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, p1, v3, v4}, Lcom/oneplus/server/RunningPool;->postAction(Lcom/oneplus/server/OPFunction;ILjava/lang/Object;)V

    .line 212
    :goto_3
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OPFunction;->setActionRule(Lcom/oneplus/server/Rule;)V

    .line 217
    :cond_e
    :goto_4
    return-void
.end method

.method private final prepareFunctionDone()V
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRunningPool:Lcom/oneplus/server/RunningPool;

    invoke-virtual {v0}, Lcom/oneplus/server/RunningPool;->prepareActionDone()V

    .line 150
    return-void
.end method

.method private registerFunctionExt(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "settingProviderKey"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 580
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/FunctionManager;->addFunction(Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 581
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    if-nez v0, :cond_0

    .line 582
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

    .line 583
    const/4 v1, 0x0

    return v1

    .line 584
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_1

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 588
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    const/4 v1, 0x1

    return v1
.end method

.method private registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "func"    # Lcom/oneplus/oimc/IOPFunction;
    .param p3, "flag"    # I

    .line 566
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/FunctionManager;->addFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 567
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    if-nez v0, :cond_0

    .line 568
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

    .line 569
    const/4 v1, 0x0

    return v1

    .line 570
    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v1, :cond_1

    .line 571
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registered func "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 574
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 575
    const/4 v1, 0x1

    return v1
.end method

.method private registerModeInt(Lcom/oneplus/server/SceneMode;)Z
    .locals 2
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 552
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/ModeManager;->addMode(Lcom/oneplus/server/SceneMode;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 553
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

    .line 554
    const/4 v0, 0x0

    return v0

    .line 555
    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v0, :cond_1

    .line 556
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

    .line 559
    :cond_1
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 560
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 561
    const/4 v0, 0x1

    return v0
.end method

.method private removeRuleInt(Lcom/oneplus/server/Rule;)Z
    .locals 9
    .param p1, "rule"    # Lcom/oneplus/server/Rule;

    .line 227
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/RuleManager;->removeRule(Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 228
    const-string v0, "Remove rule failed"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 229
    return v1

    .line 232
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getModes()Ljava/util/ArrayList;

    move-result-object v0

    .line 233
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v2

    .line 234
    .local v2, "req":I
    move v3, v1

    .line 234
    .local v3, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ge v3, v4, :cond_3

    .line 235
    iget-object v4, p0, Lcom/oneplus/server/TriggerManager;->mModeToRules:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashSet;

    .line 236
    .local v4, "h":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 237
    const-string/jumbo v6, "rule in enable table is broken"

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 239
    :cond_1
    invoke-virtual {v4, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 240
    iget-object v6, p0, Lcom/oneplus/server/TriggerManager;->mModeToFuncs:Ljava/util/HashMap;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 241
    .local v6, "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 242
    .local v7, "count":I
    if-gt v7, v5, :cond_2

    .line 243
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 245
    :cond_2
    invoke-virtual {p1}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v5

    add-int/lit8 v8, v7, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v5, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .end local v4    # "h":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/oneplus/server/Rule;>;"
    .end local v6    # "fl":Ljava/util/HashMap;, "Ljava/util/HashMap<Lcom/oneplus/server/OPFunction;Ljava/lang/Integer;>;"
    .end local v7    # "count":I
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 249
    .end local v3    # "i":I
    :cond_3
    sget-boolean v3, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v3, :cond_6

    .line 250
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

    .line 251
    new-instance v3, Ljava/lang/StringBuffer;

    const/4 v4, 0x2

    if-ne v2, v4, :cond_4

    const-string v4, "DISABLE: "

    goto :goto_2

    :cond_4
    const-string v4, "ENABLE: "

    :goto_2
    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 252
    .local v3, "sb":Ljava/lang/StringBuffer;
    nop

    .line 252
    .local v1, "i":I
    :goto_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_5

    .line 253
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

    .line 252
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 254
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 256
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_6
    return v5
.end method

.method private removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "sourceFlag"    # I

    .line 801
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 802
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v2

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v3

    .line 801
    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/server/RuleManager;->getRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 804
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v1

    if-ne v1, p3, :cond_2

    .line 805
    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->removeRuleInt(Lcom/oneplus/server/Rule;)Z

    .line 806
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 807
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 808
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 809
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 812
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 813
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 815
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 817
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 4
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
    .param p4, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p5, "sourceFlag"    # I
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

    .line 821
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/RuleManager;->getRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 823
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v1

    if-ne v1, p5, :cond_2

    .line 824
    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->removeRuleInt(Lcom/oneplus/server/Rule;)Z

    .line 825
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 826
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 827
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mRunningRules:Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 828
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mFuncToRunningRules:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashSet;

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 831
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 832
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v2

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 834
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 837
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method private removeRuntimeRuleAsUser(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 3
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "userId"    # I

    .line 847
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 848
    .local v0, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "User"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 849
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v1

    return v1
.end method

.method private removeRuntimeRuleByCmd(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 869
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private removeRuntimeRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 857
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private runRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z
    .locals 6
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "sourceFlag"    # I

    .line 736
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 737
    return v1

    .line 739
    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    .line 740
    return v1

    .line 742
    :cond_1
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mRuleManager:Lcom/oneplus/server/RuleManager;

    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getTriggerModes()[Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 743
    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getAction()I

    move-result v4

    invoke-virtual {p1}, Lcom/oneplus/oimc/OIMCRule;->getFuncName()Ljava/lang/String;

    move-result-object v5

    .line 742
    invoke-virtual {v0, v3, v4, v5, p3}, Lcom/oneplus/server/RuleManager;->tryConstructRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 744
    .local v0, "rule":Lcom/oneplus/server/Rule;
    if-nez v0, :cond_2

    .line 745
    return v1

    .line 747
    :cond_2
    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/Rule;->setRinfo(Ljava/lang/Object;)V

    .line 748
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/server/OPFunction;->getFlag()I

    move-result v3

    const/4 v4, 0x2

    if-eq v3, v4, :cond_3

    .line 749
    return v1

    .line 751
    :cond_3
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->isRunnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 752
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v1

    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/oneplus/server/TriggerManager;->calcFuncStatus(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;

    move-result-object v3

    invoke-virtual {p2}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, v1, v3, v4}, Lcom/oneplus/server/TriggerManager;->triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V

    .line 755
    :cond_4
    return v2
.end method

.method private runRuleForAll(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "r"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 861
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/server/TriggerManager;->runRule(Lcom/oneplus/oimc/OIMCRule;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v0

    return v0
.end method

.method private final triggerFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;)V
    .locals 1
    .param p1, "func"    # Lcom/oneplus/server/OPFunction;
    .param p2, "rule"    # Lcom/oneplus/server/Rule;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 156
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/server/TriggerManager;->prepareFunction(Lcom/oneplus/server/OPFunction;Lcom/oneplus/server/Rule;Ljava/lang/Object;Z)V

    .line 157
    return-void
.end method

.method private unBindRemoteAction(Ljava/lang/String;)Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 615
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mFunctionManager:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v0

    .line 616
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 617
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

    .line 618
    return v1

    .line 621
    :cond_0
    invoke-virtual {v0}, Lcom/oneplus/server/OPFunction;->getFunc()Lcom/oneplus/oimc/IOPFunction;

    move-result-object v2

    .line 622
    .local v2, "iop":Lcom/oneplus/oimc/IOPFunction;
    instance-of v3, v2, Lcom/oneplus/oimc/OIMCRemoteFunc;

    if-eqz v3, :cond_2

    .line 623
    move-object v1, v2

    check-cast v1, Lcom/oneplus/oimc/OIMCRemoteFunc;

    .line 624
    .local v1, "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    invoke-virtual {v1}, Lcom/oneplus/oimc/OIMCRemoteFunc;->unBindRemoteAction()Z

    .line 626
    iget-boolean v3, p0, Lcom/oneplus/server/TriggerManager;->printDebug:Z

    if-eqz v3, :cond_1

    .line 627
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

    .line 629
    .end local v1    # "rfunc":Lcom/oneplus/oimc/OIMCRemoteFunc;
    :cond_1
    nop

    .line 633
    const/4 v1, 0x1

    return v1

    .line 630
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

    .line 631
    return v1
.end method

.method private userSwitch(I)V
    .locals 3
    .param p1, "newUserId"    # I

    .line 1032
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v0}, Lcom/oneplus/server/ModeManager;->getCurrUserModeName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1033
    return-void

    .line 1036
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "User"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1037
    .local v0, "newUserIdModeName":Ljava/lang/String;
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1038
    new-instance v1, Lcom/oneplus/server/SceneMode;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 1041
    :cond_1
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1042
    invoke-virtual {v1, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    .line 1043
    invoke-virtual {v2}, Lcom/oneplus/server/ModeManager;->getCurrUserModeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1044
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/4 v2, 0x3

    invoke-direct {p0, v2, v1}, Lcom/oneplus/server/TriggerManager;->modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z

    .line 1046
    iget-object v2, p0, Lcom/oneplus/server/TriggerManager;->mModeManager:Lcom/oneplus/server/ModeManager;

    invoke-virtual {v2, v0}, Lcom/oneplus/server/ModeManager;->setCurrUserMode(Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method private writeLocalConfig()V
    .locals 6

    .line 1090
    iget-object v0, p0, Lcom/oneplus/server/TriggerManager;->mDataDir:Ljava/io/File;

    invoke-direct {p0, v0}, Lcom/oneplus/server/TriggerManager;->getConfigFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 1091
    .local v0, "configFile":Ljava/io/File;
    new-instance v1, Landroid/util/AtomicFile;

    invoke-direct {v1, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1092
    .local v1, "mAtomicFile":Landroid/util/AtomicFile;
    const/4 v2, 0x0

    .line 1093
    .local v2, "fos":Ljava/io/FileOutputStream;
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->genCustomConfigString()Ljava/lang/String;

    move-result-object v3

    .line 1094
    .local v3, "configStr":Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1096
    :try_start_0
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v4

    move-object v2, v4

    .line 1097
    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 1098
    .local v4, "out":Ljava/io/BufferedOutputStream;
    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v3, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 1099
    invoke-virtual {v4}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1100
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 1101
    sget-boolean v5, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v5, :cond_0

    const-string/jumbo v5, "writeLocalConfig complete"

    invoke-static {v5}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1107
    .end local v4    # "out":Ljava/io/BufferedOutputStream;
    :cond_0
    goto :goto_0

    .line 1102
    :catch_0
    move-exception v4

    .line 1103
    .local v4, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_1

    .line 1104
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 1106
    :cond_1
    const-string v5, "Failed to write local config"

    invoke-static {v5, v4}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1109
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public addRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;
    .locals 1
    .param p2, "request"    # I
    .param p3, "fname"    # Ljava/lang/String;
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

    .line 221
    .local p1, "names":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    monitor-enter p0

    .line 222
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/server/TriggerManager;->addRuleInt(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;
    .param p3, "pw"    # Ljava/io/PrintWriter;

    .line 895
    monitor-enter p0

    .line 896
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/TriggerManager;->doDumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V

    .line 897
    monitor-exit p0

    .line 898
    return-void

    .line 897
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 889
    monitor-enter p0

    .line 890
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/TriggerManager;->doGetFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 891
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z
    .locals 1
    .param p1, "type"    # I
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 883
    monitor-enter p0

    .line 884
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/TriggerManager;->doGetSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 885
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public parseOnlineConfig(Lorg/json/JSONArray;)V
    .locals 9
    .param p1, "jsonArray"    # Lorg/json/JSONArray;

    .line 1256
    if-nez p1, :cond_0

    .line 1257
    return-void

    .line 1260
    :cond_0
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1261
    const/4 v0, 0x0

    move v1, v0

    .line 1261
    .local v1, "index":I
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 1262
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    .line 1264
    .local v2, "json":Lorg/json/JSONObject;
    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "force_disable_func_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1265
    new-instance v3, Landroid/util/ArraySet;

    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 1266
    .local v3, "disableSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    .line 1267
    .local v4, "disableListJsonArray":Lorg/json/JSONArray;
    move v5, v0

    .line 1267
    .local v5, "i":I
    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 1268
    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1269
    .local v6, "disabledFunc":Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 1270
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

    .line 1271
    :cond_1
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1267
    .end local v6    # "disabledFunc":Ljava/lang/String;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1274
    .end local v5    # "i":I
    :cond_3
    const/4 v5, 0x2

    invoke-direct {p0, v3, v5}, Lcom/oneplus/server/TriggerManager;->applyOnlineConfig(Landroid/util/ArraySet;I)V

    .line 1261
    .end local v2    # "json":Lorg/json/JSONObject;
    .end local v3    # "disableSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    .end local v4    # "disableListJsonArray":Lorg/json/JSONArray;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1277
    .end local v1    # "index":I
    :cond_5
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1278
    :try_start_2
    const-string v0, "apply onlineconfig done"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1282
    goto :goto_2

    .line 1277
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

    .line 1280
    :catch_0
    move-exception v0

    .line 1281
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolve online config error"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1283
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public readLocalConfig()V
    .locals 9

    .line 1050
    const/4 v0, 0x0

    .line 1060
    .local v0, "is":Ljava/io/InputStream;
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/TriggerManager;->mSystemDir:Ljava/io/File;

    invoke-direct {p0, v1}, Lcom/oneplus/server/TriggerManager;->getConfigFile(Ljava/io/File;)Ljava/io/File;

    move-result-object v1

    .line 1061
    .local v1, "configFile":Ljava/io/File;
    const-string/jumbo v2, "load default config"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 1063
    new-instance v2, Landroid/util/AtomicFile;

    invoke-direct {v2, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1064
    .local v2, "mAtomicFile":Landroid/util/AtomicFile;
    invoke-virtual {v2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v3

    move-object v0, v3

    .line 1065
    new-instance v3, Ljava/io/StringWriter;

    invoke-direct {v3}, Ljava/io/StringWriter;-><init>()V

    .line 1066
    .local v3, "writer":Ljava/io/Writer;
    const/16 v4, 0x400

    new-array v4, v4, [C

    .line 1067
    .local v4, "buffer":[C
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    sget-object v7, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v6, v0, v7}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 1069
    .local v5, "reader":Ljava/io/Reader;
    :goto_0
    invoke-virtual {v5, v4}, Ljava/io/Reader;->read([C)I

    move-result v6

    move v7, v6

    .line 1069
    .local v7, "n":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_0

    .line 1070
    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v7}, Ljava/io/Writer;->write([CII)V

    goto :goto_0

    .line 1073
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1074
    .local v6, "jsonString":Ljava/lang/String;
    invoke-direct {p0, v6}, Lcom/oneplus/server/TriggerManager;->parseLocalConfig(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1080
    .end local v1    # "configFile":Ljava/io/File;
    .end local v2    # "mAtomicFile":Landroid/util/AtomicFile;
    .end local v3    # "writer":Ljava/io/Writer;
    .end local v4    # "buffer":[C
    .end local v5    # "reader":Ljava/io/Reader;
    .end local v6    # "jsonString":Ljava/lang/String;
    .end local v7    # "n":I
    if-eqz v0, :cond_1

    .line 1081
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1083
    :catch_0
    move-exception v1

    .line 1086
    goto :goto_2

    .line 1085
    :cond_1
    :goto_1
    goto :goto_2

    .line 1079
    :catchall_0
    move-exception v1

    goto :goto_3

    .line 1076
    :catch_1
    move-exception v1

    .line 1077
    .local v1, "e":Ljava/lang/Exception;
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

    .line 1080
    .end local v1    # "e":Ljava/lang/Exception;
    if-eqz v0, :cond_1

    .line 1081
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1087
    :goto_2
    return-void

    .line 1079
    :goto_3
    nop

    .line 1080
    if-eqz v0, :cond_2

    .line 1081
    :try_start_4
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    .line 1083
    :catch_2
    move-exception v2

    nop

    .line 1085
    :cond_2
    :goto_4
    throw v1
.end method

.method public registerFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "func"    # Lcom/oneplus/oimc/IOPFunction;
    .param p3, "flag"    # I

    .line 901
    monitor-enter p0

    .line 902
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/TriggerManager;->registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 903
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public registerMode(Lcom/oneplus/server/SceneMode;)Z
    .locals 1
    .param p1, "mode"    # Lcom/oneplus/server/SceneMode;

    .line 907
    monitor-enter p0

    .line 908
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oneplus/server/TriggerManager;->registerModeInt(Lcom/oneplus/server/SceneMode;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 909
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public updateTrigger(Landroid/os/Message;)Z
    .locals 10
    .param p1, "msg"    # Landroid/os/Message;

    .line 920
    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->getModeType(I)I

    move-result v0

    .line 921
    .local v0, "ttype":I
    iget v1, p1, Landroid/os/Message;->what:I

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->getMajorType(I)I

    move-result v1

    .line 923
    .local v1, "mtype":I
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

    .line 924
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

    .line 925
    return v3

    .line 928
    :cond_1
    const/4 v2, 0x0

    .line 929
    .local v2, "ret":Z
    monitor-enter p0

    .line 930
    const/16 v3, 0x2710

    if-eq v1, v3, :cond_2

    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    packed-switch v1, :pswitch_data_2

    packed-switch v1, :pswitch_data_3

    packed-switch v1, :pswitch_data_4

    .line 1022
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

    .line 1025
    :catchall_0
    move-exception v3

    goto/16 :goto_2

    .line 971
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

    .line 972
    goto/16 :goto_1

    .line 1019
    :pswitch_1
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->unBindRemoteAction(Ljava/lang/String;)Z

    move-result v3

    move v2, v3

    .line 1020
    goto/16 :goto_1

    .line 1015
    :pswitch_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    .line 1016
    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/os/IOIMCRemoteAction;

    .line 1015
    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/TriggerManager;->bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)Z

    move-result v3

    move v2, v3

    .line 1017
    goto/16 :goto_1

    .line 968
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

    .line 969
    goto/16 :goto_1

    .line 965
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

    .line 966
    goto/16 :goto_1

    .line 1012
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

    .line 1013
    goto/16 :goto_1

    .line 1009
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

    .line 1010
    goto/16 :goto_1

    .line 1003
    :pswitch_7
    invoke-direct {p0}, Lcom/oneplus/server/TriggerManager;->writeLocalConfig()V

    .line 1004
    goto/16 :goto_1

    .line 962
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

    .line 963
    goto/16 :goto_1

    .line 959
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

    .line 960
    goto/16 :goto_1

    .line 1000
    :pswitch_a
    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->userSwitch(I)V

    .line 1001
    goto/16 :goto_1

    .line 998
    :pswitch_b
    goto/16 :goto_1

    .line 994
    :pswitch_c
    invoke-virtual {p0}, Lcom/oneplus/server/TriggerManager;->readLocalConfig()V

    .line 995
    goto/16 :goto_1

    .line 986
    :pswitch_d
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    .line 987
    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 986
    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->registerFunctionExt(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    move v2, v3

    .line 989
    goto/16 :goto_1

    .line 981
    :pswitch_e
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    .line 982
    invoke-virtual {v4}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/oimc/IOPFunction;

    iget v5, p1, Landroid/os/Message;->arg1:I

    .line 981
    invoke-direct {p0, v3, v4, v5}, Lcom/oneplus/server/TriggerManager;->registerFunctionInt(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Z

    move-result v3

    move v2, v3

    .line 984
    goto/16 :goto_1

    .line 978
    :pswitch_f
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg1()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/SceneMode;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->registerModeInt(Lcom/oneplus/server/SceneMode;)Z

    move-result v3

    move v2, v3

    .line 979
    goto/16 :goto_1

    .line 1006
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

    .line 1007
    goto/16 :goto_1

    .line 974
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

    .line 976
    goto/16 :goto_1

    .line 953
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

    .line 955
    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Lcom/oneplus/server/MsgObjectArg;

    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 953
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/server/TriggerManager;->removeRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    .line 957
    goto :goto_1

    .line 947
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

    .line 949
    invoke-virtual {v3}, Lcom/oneplus/server/MsgObjectArg;->getArg2()Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Ljava/lang/String;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v8, v3

    check-cast v8, Lcom/oneplus/server/MsgObjectArg;

    iget v9, p1, Landroid/os/Message;->arg2:I

    .line 947
    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/oneplus/server/TriggerManager;->addRuntimeRule(Ljava/util/ArrayList;ILjava/lang/String;Lcom/oneplus/server/MsgObjectArg;I)Z

    move-result v3

    move v2, v3

    .line 951
    goto :goto_1

    .line 944
    :pswitch_14
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeTransition(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 945
    goto :goto_1

    .line 941
    :pswitch_15
    iget v3, p1, Landroid/os/Message;->arg1:I

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3, v4}, Lcom/oneplus/server/TriggerManager;->modeConfig(IILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 942
    goto :goto_1

    .line 938
    :pswitch_16
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeSwitch(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 939
    goto :goto_1

    .line 935
    :pswitch_17
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeExit(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 936
    goto :goto_1

    .line 932
    :pswitch_18
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0, v1, v3}, Lcom/oneplus/server/TriggerManager;->modeEnter(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v3

    move v2, v3

    .line 933
    goto :goto_1

    .line 991
    :cond_2
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/oneplus/server/OPFunction;

    invoke-direct {p0, v3}, Lcom/oneplus/server/TriggerManager;->flushLoop(Lcom/oneplus/server/OPFunction;)V

    .line 992
    nop

    .line 1025
    :goto_1
    monitor-exit p0

    .line 1027
    return v2

    .line 1025
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
