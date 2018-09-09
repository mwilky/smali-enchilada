.class public Lcom/oneplus/server/RuleManager;
.super Ljava/lang/Object;
.source "RuleManager.java"


# instance fields
.field private mFM:Lcom/oneplus/server/FunctionManager;

.field private mMM:Lcom/oneplus/server/ModeManager;

.field private mRulesTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/oneplus/server/Rule;",
            "Lcom/oneplus/server/Rule;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/oneplus/server/ModeManager;Lcom/oneplus/server/FunctionManager;)V
    .locals 1
    .param p1, "mm"    # Lcom/oneplus/server/ModeManager;
    .param p2, "fm"    # Lcom/oneplus/server/FunctionManager;

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    .line 33
    iput-object p2, p0, Lcom/oneplus/server/RuleManager;->mFM:Lcom/oneplus/server/FunctionManager;

    .line 34
    iput-object p1, p0, Lcom/oneplus/server/RuleManager;->mMM:Lcom/oneplus/server/ModeManager;

    .line 35
    return-void
.end method


# virtual methods
.method public addRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;
    .locals 3
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

    .line 139
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/oneplus/server/RuleManager;->tryConstructRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;

    move-result-object v0

    .line 140
    .local v0, "rule":Lcom/oneplus/server/Rule;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 141
    const-string/jumbo v2, "tryConstructRule rule is null"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 142
    return-object v1

    .line 145
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    const-string v2, "addRuleInt failed, Rule is already exist"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 147
    return-object v1

    .line 149
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v1, v0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 153
    const-string v1, "Added rule: "

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 154
    invoke-virtual {v0}, Lcom/oneplus/server/Rule;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 156
    :cond_2
    return-object v0
.end method

.method public createRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;
    .locals 5
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

    .line 91
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 92
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 93
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mMM:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 96
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mMM:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 94
    :cond_1
    :goto_1
    return-object v3

    .line 98
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/RuleManager;->mFM:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, p3}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    .line 99
    .local v1, "func":Lcom/oneplus/server/OPFunction;
    if-nez v1, :cond_3

    .line 100
    return-object v3

    .line 103
    :cond_3
    new-instance v2, Lcom/oneplus/server/Rule;

    invoke-direct {v2, v0, p2, v1}, Lcom/oneplus/server/Rule;-><init>(Ljava/util/ArrayList;ILcom/oneplus/server/OPFunction;)V

    return-object v2
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dumping Rules: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 161
    iget-object v0, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

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

    check-cast v1, Lcom/oneplus/server/Rule;

    .line 162
    .local v1, "rule":Lcom/oneplus/server/Rule;
    const-string v2, "  "

    invoke-virtual {v1, p1, v2}, Lcom/oneplus/server/Rule;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 163
    .end local v1    # "rule":Lcom/oneplus/server/Rule;
    goto :goto_0

    .line 164
    :cond_0
    return-void
.end method

.method public getRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;
    .locals 5
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

    .line 42
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 44
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mMM:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 47
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mMM:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_1
    :goto_1
    return-object v3

    .line 49
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/RuleManager;->mFM:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, p3}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    .line 50
    .local v1, "func":Lcom/oneplus/server/OPFunction;
    if-nez v1, :cond_3

    .line 51
    return-object v3

    .line 54
    :cond_3
    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    new-instance v3, Lcom/oneplus/server/Rule;

    invoke-direct {v3, v0, p2, v1}, Lcom/oneplus/server/Rule;-><init>(Ljava/util/ArrayList;ILcom/oneplus/server/OPFunction;)V

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/Rule;

    return-object v2
.end method

.method public getRuleCount()I
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public getRuleSet(II)Landroid/util/ArraySet;
    .locals 5
    .param p1, "flag"    # I
    .param p2, "request"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/ArraySet<",
            "Lcom/oneplus/server/Rule;",
            ">;"
        }
    .end annotation

    .line 71
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 72
    .local v0, "resultSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    iget-object v1, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 73
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/server/Rule;Lcom/oneplus/server/Rule;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    .line 74
    .local v3, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 75
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 76
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 78
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/server/Rule;Lcom/oneplus/server/Rule;>;"
    .end local v3    # "rule":Lcom/oneplus/server/Rule;
    :cond_0
    goto :goto_0

    .line 79
    :cond_1
    return-object v0
.end method

.method public getRuleSetByFunc(Ljava/lang/String;II)Landroid/util/ArraySet;
    .locals 5
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "flag"    # I
    .param p3, "request"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Landroid/util/ArraySet<",
            "Lcom/oneplus/server/Rule;",
            ">;"
        }
    .end annotation

    .line 58
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 59
    .local v0, "resultSet":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/oneplus/server/Rule;>;"
    iget-object v1, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 60
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/server/Rule;Lcom/oneplus/server/Rule;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/server/Rule;

    .line 61
    .local v3, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getFunc()Lcom/oneplus/server/OPFunction;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/server/OPFunction;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getSourceFlag()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 63
    invoke-virtual {v3}, Lcom/oneplus/server/Rule;->getRequest()I

    move-result v4

    if-ne v4, p3, :cond_0

    .line 64
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 66
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lcom/oneplus/server/Rule;Lcom/oneplus/server/Rule;>;"
    .end local v3    # "rule":Lcom/oneplus/server/Rule;
    :cond_0
    goto :goto_0

    .line 67
    :cond_1
    return-object v0
.end method

.method public hasRule(Lcom/oneplus/server/Rule;)Z
    .locals 1
    .param p1, "rule"    # Lcom/oneplus/server/Rule;

    .line 87
    iget-object v0, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public removeRule(Lcom/oneplus/server/Rule;)Lcom/oneplus/server/Rule;
    .locals 1
    .param p1, "rule"    # Lcom/oneplus/server/Rule;

    .line 38
    iget-object v0, p0, Lcom/oneplus/server/RuleManager;->mRulesTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/Rule;

    return-object v0
.end method

.method public tryConstructRule(Ljava/util/ArrayList;ILjava/lang/String;I)Lcom/oneplus/server/Rule;
    .locals 5
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

    .line 107
    .local p1, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v0, "modes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/server/SceneMode;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    if-ge v1, v2, :cond_2

    .line 109
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mMM:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 113
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/RuleManager;->mMM:Lcom/oneplus/server/ModeManager;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/oneplus/server/ModeManager;->getMode(Ljava/lang/String;)Lcom/oneplus/server/SceneMode;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    :cond_1
    :goto_1
    const-string/jumbo v2, "mode name is null or mode is not exist"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 111
    return-object v3

    .line 116
    .end local v1    # "i":I
    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/RuleManager;->mFM:Lcom/oneplus/server/FunctionManager;

    invoke-virtual {v1, p3}, Lcom/oneplus/server/FunctionManager;->getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;

    move-result-object v1

    .line 117
    .local v1, "func":Lcom/oneplus/server/OPFunction;
    if-eqz p3, :cond_6

    if-nez v1, :cond_3

    goto :goto_2

    .line 122
    :cond_3
    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eq p2, v2, :cond_4

    if-eq p2, v4, :cond_4

    .line 123
    const-string/jumbo v2, "the request to function should be FUNC_DISABLE/FUNC_ENABLE"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 124
    return-object v3

    .line 127
    :cond_4
    if-ne p2, v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-eq v2, v4, :cond_5

    .line 128
    const-string/jumbo v2, "only one mode support for FUNC_DISABLE rule"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 129
    return-object v3

    .line 132
    :cond_5
    new-instance v2, Lcom/oneplus/server/Rule;

    invoke-direct {v2, v0, p2, v1}, Lcom/oneplus/server/Rule;-><init>(Ljava/util/ArrayList;ILcom/oneplus/server/OPFunction;)V

    .line 133
    .local v2, "rule":Lcom/oneplus/server/Rule;
    invoke-virtual {v2, p4}, Lcom/oneplus/server/Rule;->setSourceFlag(I)V

    .line 135
    return-object v2

    .line 118
    .end local v2    # "rule":Lcom/oneplus/server/Rule;
    :cond_6
    :goto_2
    const-string v2, "function name is null or function is not exist"

    invoke-static {v2}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 119
    return-object v3
.end method
