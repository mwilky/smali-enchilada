.class Lcom/oneplus/server/OIMCTest$1TestThread;
.super Ljava/lang/Thread;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCTest;->startTest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v0, 0x0

    const-string v1, "  TestThread.run"

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$700(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "registerFuncsAndModes"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    return-void

    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "registerFuncsAndModes"

    const/4 v6, 0x1

    invoke-static {v2, v1, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1100(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string v5, "functionTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    return-void

    :cond_1
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1200(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "runRuleTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    return-void

    :cond_2
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1300(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "ruleConfigTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    return-void

    :cond_3
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1400(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "modeChangeTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    return-void

    :cond_4
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "modeChangeTest"

    invoke-static {v2, v1, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1500(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "ruleAddRemoveTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    const-string v2, "OIMCTest"

    const-string v3, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_5
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Success ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    return-void
.end method
