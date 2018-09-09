.class Lcom/oneplus/server/OIMCTest$TestExistingRule$1;
.super Lcom/oneplus/server/OIMCTest$checkSysInfo;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/server/OIMCTest$TestExistingRule;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest$TestExistingRule;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 1
    .param p1, "this$1"    # Lcom/oneplus/server/OIMCTest$TestExistingRule;
    .param p2, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 784
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->this$1:Lcom/oneplus/server/OIMCTest$TestExistingRule;

    iget-object v0, p1, Lcom/oneplus/server/OIMCTest$TestExistingRule;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0, v0, p2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 787
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->getArg()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/RuleManager;

    .line 788
    .local v0, "rm":Lcom/oneplus/server/RuleManager;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->setResult(I)V

    .line 789
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->this$1:Lcom/oneplus/server/OIMCTest$TestExistingRule;

    iget-object v1, v1, Lcom/oneplus/server/OIMCTest$TestExistingRule;->modeNames:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->this$1:Lcom/oneplus/server/OIMCTest$TestExistingRule;

    iget v2, v2, Lcom/oneplus/server/OIMCTest$TestExistingRule;->request:I

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->this$1:Lcom/oneplus/server/OIMCTest$TestExistingRule;

    iget-object v3, v3, Lcom/oneplus/server/OIMCTest$TestExistingRule;->funcName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oneplus/server/RuleManager;->getRule(Ljava/util/ArrayList;ILjava/lang/String;)Lcom/oneplus/server/Rule;

    move-result-object v1

    .line 790
    .local v1, "rule":Lcom/oneplus/server/Rule;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/server/Rule;->getRinfo()Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->this$1:Lcom/oneplus/server/OIMCTest$TestExistingRule;

    iget-object v3, v3, Lcom/oneplus/server/OIMCTest$TestExistingRule;->rInfo:Ljava/lang/Integer;

    if-ne v2, v3, :cond_0

    .line 791
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/server/OIMCTest$TestExistingRule$1;->setResult(I)V

    .line 792
    :cond_0
    return-void
.end method
