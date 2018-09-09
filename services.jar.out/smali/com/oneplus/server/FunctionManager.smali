.class public Lcom/oneplus/server/FunctionManager;
.super Ljava/lang/Object;
.source "FunctionManager.java"


# instance fields
.field private mFunctionsTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/OPFunction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    .line 34
    return-void
.end method


# virtual methods
.method public addFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Lcom/oneplus/server/OPFunction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "func"    # Lcom/oneplus/oimc/IOPFunction;
    .param p3, "flag"    # I

    .line 46
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 47
    const-string v1, "error, set func as null"

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 48
    return-object v0

    .line 51
    :cond_0
    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 55
    return-object v0

    .line 57
    :cond_2
    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    .line 58
    return-object v0

    .line 60
    :cond_3
    new-instance v0, Lcom/oneplus/server/OPFunction;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)V

    .line 61
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    return-object v0

    .line 52
    .end local v0    # "oFunc":Lcom/oneplus/server/OPFunction;
    :cond_4
    :goto_0
    return-object v0
.end method

.method public addFunction(Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/server/OPFunction;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "settingProviderKey"    # Ljava/lang/String;
    .param p3, "flag"    # I

    .line 67
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 68
    const-string v1, "error, provider key as null"

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 69
    return-object v0

    .line 72
    :cond_0
    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 75
    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 76
    return-object v0

    .line 78
    :cond_2
    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    .line 79
    return-object v0

    .line 81
    :cond_3
    new-instance v0, Lcom/oneplus/server/OPFunction;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 82
    .local v0, "oFunc":Lcom/oneplus/server/OPFunction;
    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    return-object v0

    .line 73
    .end local v0    # "oFunc":Lcom/oneplus/server/OPFunction;
    :cond_4
    :goto_0
    return-object v0
.end method

.method public dumpAllFunctions(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 87
    const-string v0, "Dumping all functions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

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

    .line 89
    .local v1, "name":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/OPFunction;

    const-string v3, "  "

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/server/OPFunction;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 90
    .end local v1    # "name":Ljava/lang/String;
    goto :goto_0

    .line 91
    :cond_0
    return-void
.end method

.method public getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    iget-object v0, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OPFunction;

    return-object v0
.end method

.method public getFunctionTable()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/server/OPFunction;",
            ">;"
        }
    .end annotation

    .line 37
    iget-object v0, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    return-object v0
.end method
