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

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addFunction(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)Lcom/oneplus/server/OPFunction;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "error, set func as null"

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Lcom/oneplus/server/OPFunction;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)V

    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public addFunction(Ljava/lang/String;Ljava/lang/String;I)Lcom/oneplus/server/OPFunction;
    .locals 2

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "error, provider key as null"

    invoke-static {v1}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    return-object v0

    :cond_0
    if-eqz p1, :cond_4

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    const/4 v1, 0x1

    if-eq p3, v1, :cond_3

    const/4 v1, 0x2

    if-eq p3, v1, :cond_3

    return-object v0

    :cond_3
    new-instance v0, Lcom/oneplus/server/OPFunction;

    invoke-direct {v0, p1, p2, p3}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_4
    :goto_0
    return-object v0
.end method

.method public dumpAllFunctions(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "Dumping all functions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

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

    iget-object v2, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/server/OPFunction;

    const-string v3, "  "

    invoke-virtual {v2, p1, v3}, Lcom/oneplus/server/OPFunction;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getFunc(Ljava/lang/String;)Lcom/oneplus/server/OPFunction;
    .locals 1

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

    iget-object v0, p0, Lcom/oneplus/server/FunctionManager;->mFunctionsTable:Ljava/util/HashMap;

    return-object v0
.end method
