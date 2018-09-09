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
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCTest;

    .line 2343
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 2345
    const/4 v0, 0x0

    .line 2346
    .local v0, "status":Z
    const-string v1, "  TestThread.run"

    .line 2347
    .local v1, "prefix":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$700(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    .line 2348
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "registerFuncsAndModes"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2349
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2350
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2352
    return-void

    .line 2354
    :cond_0
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "registerFuncsAndModes"

    const/4 v6, 0x1

    invoke-static {v2, v1, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2356
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1100(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 2357
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string v5, "functionTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2358
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2359
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2360
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2361
    return-void

    .line 2364
    :cond_1
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1200(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 2365
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "runRuleTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2366
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2367
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2368
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2369
    return-void

    .line 2372
    :cond_2
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1300(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 2373
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "ruleConfigTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2374
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2375
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2376
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2377
    return-void

    .line 2380
    :cond_3
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1400(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2381
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "modeChangeTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2382
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2383
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2384
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2385
    return-void

    .line 2387
    :cond_4
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "modeChangeTest"

    invoke-static {v2, v1, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2389
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$1500(Lcom/oneplus/server/OIMCTest;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 2390
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    const-string v4, "checking"

    const-string/jumbo v5, "ruleAddRemoveTest"

    invoke-static {v2, v1, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2391
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2392
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2393
    const-string v2, "OIMCTest"

    const-string v3, "  ================== OIMC Self Test Failed ======================"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    return-void

    .line 2397
    :cond_5
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2}, Lcom/oneplus/server/OIMCTest;->access$900(Lcom/oneplus/server/OIMCTest;)V

    .line 2398
    const-string v2, "OIMCTest"

    const-string v4, "  ================== OIMC Self Test Success ======================"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2399
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest$1TestThread;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-static {v2, v3}, Lcom/oneplus/server/OIMCTest;->access$1002(Lcom/oneplus/server/OIMCTest;Z)Z

    .line 2400
    return-void
.end method
