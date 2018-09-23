.class public Lcom/oneplus/server/OIMCTest;
.super Ljava/lang/Object;
.source "OIMCTest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/OIMCTest$TestExistingRule;,
        Lcom/oneplus/server/OIMCTest$testRepeatFunc2;,
        Lcom/oneplus/server/OIMCTest$testRepeatFunc;,
        Lcom/oneplus/server/OIMCTest$testOneshotFunc2;,
        Lcom/oneplus/server/OIMCTest$testOneshotFunc;,
        Lcom/oneplus/server/OIMCTest$testFuncChange;,
        Lcom/oneplus/server/OIMCTest$testModeStatus;,
        Lcom/oneplus/server/OIMCTest$checkSysInfo;
    }
.end annotation


# static fields
.field private static instance:Lcom/oneplus/server/OIMCTest;


# instance fields
.field private final OIMCTestMode:Ljava/lang/String;

.field private final OIMCTestMode2:Ljava/lang/String;

.field private final OIMCTestMode3:Ljava/lang/String;

.field final TAG:Ljava/lang/String;

.field private final TestOneshotFunc:Ljava/lang/String;

.field private final TestOneshotFunc2:Ljava/lang/String;

.field private final TestRepeatFunc:Ljava/lang/String;

.field private final TestRepeatFunc2:Ljava/lang/String;

.field private inTesting:Z

.field private isRegistered:Z

.field private final name:Ljava/lang/String;

.field private oimc:Lcom/oneplus/server/OIMCService;

.field private final printDebug:Z

.field private testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

.field private testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

.field private testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

.field private testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OIMCTest"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->printDebug:Z

    const-string v0, "OIMCTest"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->name:Ljava/lang/String;

    const-string v0, "OIMCTestMode"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode:Ljava/lang/String;

    const-string v0, "OIMCTestMode2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode2:Ljava/lang/String;

    const-string v0, "OIMCTestMode3"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode3:Ljava/lang/String;

    const-string v0, "TestOneshotFunc"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestOneshotFunc:Ljava/lang/String;

    const-string v0, "TestOneshotFunc2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestOneshotFunc2:Ljava/lang/String;

    const-string v0, "TestRepeatFunc"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestRepeatFunc:Ljava/lang/String;

    const-string v0, "TestRepeatFunc2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestRepeatFunc2:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/OIMCTest;ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/server/OIMCTest;)Lcom/oneplus/server/OIMCService;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/server/OIMCTest;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->functionTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->runRuleTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->ruleConfigTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->modeChangeTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->ruleAddRemoveTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->registerFuncsAndModes()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/server/OIMCTest;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->exitTestMode()V

    return-void
.end method

.method private checkContainedFuncs([Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Lcom/oneplus/server/OIMCTest$1;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$1;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private checkContainedModes([Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Lcom/oneplus/server/OIMCTest$2;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private checkModePriority(Ljava/lang/String;I)Z
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Lcom/oneplus/server/OIMCTest$3;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$3;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    new-instance v4, Lcom/oneplus/server/OIMCTest$1checkModePrio;

    invoke-direct {v4, p0, p1, p2}, Lcom/oneplus/server/OIMCTest$1checkModePrio;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private checkRegisteredFunction(Ljava/lang/String;)Z
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Lcom/oneplus/server/OIMCTest$5;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$5;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    return v4
.end method

.method private clearOIMCTestModes()Z
    .locals 10

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Lcom/oneplus/server/OIMCTest$4;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$4;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v5, "SystemMode"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v3, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v3, Lcom/oneplus/server/OIMCTest$testModeStatus;

    new-array v5, v6, [Ljava/lang/String;

    const-string v7, "OIMCTestMode"

    const-string v8, "OIMCTestMode2"

    const-string v9, "OIMCTestMode3"

    filled-new-array {v7, v8, v9}, [Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Integer;

    const/16 v9, 0x55

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v3, p0, v5, v7, v8}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v5

    if-nez v5, :cond_0

    return v6

    :cond_0
    return v4
.end method

.method private dumpAllSysInfo()V
    .locals 6

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x2712

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    const/16 v1, 0x3f

    iput v1, v0, Landroid/os/Message;->arg1:I

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    return-void
.end method

.method private enterTestMode()V
    .locals 3

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Enter OIMC TestMode ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestMode"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    return-void
.end method

.method private exitTestMode()V
    .locals 4

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Exit OIMC TestMode ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestMode"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->flushMessage()Z

    return-void
.end method

.method private functionTest()Z
    .locals 7

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting functionTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "    functionTest"

    const/16 v1, 0x55

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const/16 v3, 0x68

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkConfigStatus(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "FUNC_CONFIG"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_0
    const-string v3, "FUNC_CONFIG"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6
.end method

.method public static declared-synchronized getInstance(Lcom/oneplus/server/OIMCService;)Lcom/oneplus/server/OIMCTest;
    .locals 2

    const-class v0, Lcom/oneplus/server/OIMCTest;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/server/OIMCTest;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OIMCTest;-><init>(Lcom/oneplus/server/OIMCService;)V

    sput-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    :cond_0
    sget-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRuleCount()I
    .locals 5

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Lcom/oneplus/server/OIMCTest$6;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$6;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    return v3
.end method

.method private handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 4

    const/16 v0, 0x2711

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    iput v0, p2, Landroid/os/Message;->what:I

    iput p1, p2, Landroid/os/Message;->arg1:I

    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    iget v1, p2, Landroid/os/Message;->what:I

    iget v2, p2, Landroid/os/Message;->arg1:I

    iget v3, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    return-void
.end method

.method private modeChangeTest()Z
    .locals 13

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting modeChangeTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "    modeChangeTest"

    const/16 v1, 0x55

    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->clearOIMCTestModes()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    const-string v4, "clearOIMCTestModes"

    const-string v6, ""

    invoke-direct {p0, v0, v4, v6, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_0
    const-string v4, "clearOIMCTestModes"

    const-string v6, ""

    const/4 v7, 0x1

    invoke-direct {p0, v0, v4, v6, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v4, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v6, "OIMCTestMode"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    const-string v8, "OIMCTestMode2"

    const-string v9, "OIMCTestMode3"

    filled-new-array {v8, v9}, [Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v4, p0, v6, v8, v9}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "MODE_ENTER"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_1
    const-string v6, "MODE_ENTER"

    const-string v8, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v8, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x3

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v9, "SystemMode"

    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    const-string v10, "OIMCTestMode"

    invoke-virtual {v9, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    invoke-direct {p0, v8, v5, v5, v9}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v8, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v9, "OIMCTestMode"

    const-string v10, "SystemMode"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const-string v10, "OIMCTestMode2"

    const-string v11, "OIMCTestMode3"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, p0, v9, v10, v5}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v8

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v8

    if-nez v8, :cond_2

    const-string v6, "MODE_SWITCH test bewteen SystemMode and"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_2
    const-string v8, "MODE_SWITCH test bewteen SystemMode and"

    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v0, v8, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "SystemMode"

    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v9, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v10, "OIMCTestMode"

    const-string v11, "SystemMode"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode2"

    const-string v12, "OIMCTestMode3"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, p0, v10, v11, v5}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_3

    const-string v6, "MODE_EXIT test for "

    const-string v7, "SystemMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_3
    const-string v9, "MODE_EXIT test for "

    const-string v10, "SystemMode"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode2"

    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v9, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v10, "OIMCTestMode"

    const-string v11, "OIMCTestMode2"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode3"

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_4

    const-string v6, "MODE_ENTER"

    const-string v7, "OIMCTestMode2"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_4
    const-string v9, "MODE_ENTER"

    const-string v10, "OIMCTestMode2"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode"

    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v9, Lcom/oneplus/server/OIMCTest$testModeStatus;

    const-string v10, "OIMCTestMode2"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode"

    const-string v12, "OIMCTestMode3"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    new-instance v12, Ljava/lang/Integer;

    invoke-direct {v12, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_5

    const-string v6, "MODE_EXIT"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_5
    const-string v9, "MODE_EXIT"

    const-string v10, "OIMCTestMode"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v9, "OIMCTestMode2"

    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    invoke-direct {p0, v8, v5, v5, v9}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v8, Lcom/oneplus/server/OIMCTest$testModeStatus;

    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "OIMCTestMode"

    const-string v11, "OIMCTestMode2"

    const-string v12, "OIMCTestMode3"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v8

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v8

    if-nez v8, :cond_6

    const-string v6, "MODE_EXIT"

    const-string v7, "OIMCTestMode2"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_6
    const-string v8, "MODE_EXIT"

    const-string v9, "OIMCTestMode2"

    invoke-direct {p0, v0, v8, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v8, 0x4

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode"

    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    invoke-direct {p0, v9, v6, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v9, v6}, Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "MODE_CONFIG priority 3"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_7
    const-string v6, "MODE_CONFIG priority 3"

    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    const-string v8, "OIMCTestMode"

    invoke-virtual {v3, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v6, v7, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    const-string v6, "OIMCTestMode"

    invoke-direct {p0, v6, v7}, Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8

    const-string v6, "MODE_CONFIG priority 1"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_8
    const-string v5, "MODE_CONFIG priority 1"

    const-string v6, "OIMCTestMode"

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7
.end method

.method private printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-eqz p4, :cond_0

    const-string v0, "OIMCTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Success"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v0, "OIMCTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/Exception;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " : Failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerFuncsAndModes()Z
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "OIMCTest"

    const-string v2, "  ================= Registering OIMCTest modes and functions ================="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "    registerFuncsAndModes"

    new-instance v2, Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    new-instance v2, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    new-instance v2, Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    new-instance v2, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/16 v3, 0xc9

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    new-instance v5, Lcom/oneplus/server/SceneMode;

    const-string v6, "OIMCTestMode"

    invoke-direct {v5, v6, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    const-string v4, "OIMCTestMode"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_1
    const-string v4, "Register mode"

    const-string v5, "OIMCTestMode"

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    new-instance v5, Lcom/oneplus/server/SceneMode;

    const-string v7, "OIMCTestMode2"

    invoke-direct {v5, v7, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    const-string v4, "OIMCTestMode2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode2"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_2
    const-string v4, "Register mode"

    const-string v5, "OIMCTestMode2"

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    new-instance v4, Lcom/oneplus/server/SceneMode;

    const-string v5, "OIMCTestMode3"

    invoke-direct {v4, v5, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v6, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    const-string v3, "OIMCTestMode3"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode3"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_3
    const-string v3, "Register mode"

    const-string v4, "OIMCTestMode3"

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v3, 0xca

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v1, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_4
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v1, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_5
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct {p0, v4, v7, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_6
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v7, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v3}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_7
    const-string v3, "Register function"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private ruleAddRemoveTest()Z
    .locals 18

    move-object/from16 v6, p0

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting ruleAddRemoveTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "    ruleAddRemoveTest"

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->clearOIMCTestModes()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    const-string v0, "clearOIMCTestModes"

    const-string v1, ""

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v8

    :cond_0
    const-string v0, "clearOIMCTestModes"

    const-string v1, ""

    const/4 v9, 0x1

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x1

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v12, 0x65

    invoke-static {v12}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v13, 0x3

    invoke-direct {v6, v0, v9, v13, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    add-int/lit8 v15, v5, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v8

    :cond_1
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v12}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc2"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-direct {v6, v0, v9, v13, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v5

    new-instance v4, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc2"

    const/16 v16, 0x1

    add-int/lit8 v2, v15, 0x1

    move-object v0, v4

    move-object v1, v6

    move v13, v2

    move-object v2, v11

    move-object v12, v4

    move/from16 v4, v16

    move v8, v5

    move v5, v15

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v12}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v0, v14, 0x1

    if-eq v0, v8, :cond_2

    goto/16 :goto_c

    :cond_2
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest20x()Z

    move-result v0

    if-nez v0, :cond_3

    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest20x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_3
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest20x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v0

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    if-eq v0, v1, :cond_4

    const-string v2, "Check same rule"

    const-string v3, "OIMCTestMode/TestOneshotFunc/ENABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_4
    const-string v2, "Check same rule"

    const-string v3, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    const-string v3, "OIMCTestMode"

    invoke-virtual {v10, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v4, v3}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2, v9, v4, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2, v4, v4, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v2

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto/16 :goto_b

    :cond_5
    const-string v2, "Check TestOneshotFunc"

    const-string/jumbo v3, "start"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    move v8, v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const/4 v12, 0x2

    const/4 v3, 0x3

    invoke-direct {v6, v2, v12, v3, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x2

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_23

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_6

    goto/16 :goto_a

    :cond_6
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9, v1}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v0, v1, v1, v1}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v0

    if-nez v0, :cond_7

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_7
    const-string v0, "Check TestOneshotFunc"

    const-string/jumbo v1, "stop"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest40x()Z

    move-result v0

    if-nez v0, :cond_8

    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest40x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_8
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest40x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v14

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "OIMCTestMode2"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x65

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v3, "TestOneshotFunc2"

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    if-eq v0, v1, :cond_9

    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_9
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v2, "OIMCTestMode"

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v2, "OIMCTestMode2"

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v2, 0x65

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v4, "TestOneshotFunc"

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v4, 0x3

    invoke-direct {v6, v3, v12, v4, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    if-eq v0, v1, :cond_a

    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_a
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_21

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_b

    goto/16 :goto_8

    :cond_b
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest70x()Z

    move-result v0

    if-nez v0, :cond_c

    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest70x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_c
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest70x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v14

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode3"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v0, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {v6, v1, v9, v2, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_20

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_d

    goto/16 :goto_7

    :cond_d
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v14

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v15, 0x66

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc2"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    new-instance v5, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc2"

    const/4 v4, 0x1

    move-object v0, v5

    move-object v1, v6

    move-object v2, v11

    move-object v12, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v12}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1f

    add-int/lit8 v0, v14, 0x1

    if-eq v8, v0, :cond_e

    goto/16 :goto_6

    :cond_e
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v14

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "OIMCTestMode3"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v6, v1, v4, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    if-eq v0, v1, :cond_f

    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode,OIMCTestMode3/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_f
    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode,OIMCTestMode3/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v6, v0, v9, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1e

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_10

    goto/16 :goto_5

    :cond_10
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {v6, v0, v3, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x2

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1d

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_11

    goto/16 :goto_4

    :cond_11
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestRepeatFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_1c

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v12, :cond_12

    goto/16 :goto_3

    :cond_12
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest130x()Z

    move-result v0

    if-nez v0, :cond_13

    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest130x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_13
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest130x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v0, v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v6, v1, v4, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    if-eq v0, v1, :cond_14

    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_14
    const/4 v4, 0x0

    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest140x()Z

    move-result v2

    if-nez v2, :cond_15

    const-string/jumbo v2, "run"

    const-string/jumbo v3, "ruleSubTest140x"

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v4

    :cond_15
    const-string/jumbo v2, "run"

    const-string/jumbo v3, "ruleSubTest140x"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v1

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v6, v0, v9, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1b

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_16

    goto/16 :goto_2

    :cond_16
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1a

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_17

    goto :goto_1

    :cond_17
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    move v8, v12

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "OIMCTestMode3"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_19

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_18

    goto :goto_0

    :cond_18
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_19
    :goto_0
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1a
    :goto_1
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1b
    :goto_2
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1c
    :goto_3
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1d
    :goto_4
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1e
    :goto_5
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_1f
    :goto_6
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_20
    :goto_7
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_21
    :goto_8
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_22
    move v2, v1

    :goto_9
    const-string v0, "Check TestOneshotFunc"

    const-string/jumbo v1, "stop"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_23
    :goto_a
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_24
    move v2, v4

    :goto_b
    const-string v3, "Check TestOneshotFunc"

    const-string/jumbo v4, "start"

    invoke-direct {v6, v7, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_25
    :goto_c
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2
.end method

.method private ruleConfigTest()Z
    .locals 23

    move-object/from16 v0, p0

    const-string v1, "OIMCTest"

    const-string v2, "  ================== Starting ruleConfigTest ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "    ruleConfigTest"

    const/16 v2, 0x55

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    iget-object v4, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const-string/jumbo v4, "startPar1"

    const-string/jumbo v12, "stopPar1"

    new-instance v13, Lcom/oneplus/oimc/OIMCRule;

    iget-object v5, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v5, "OIMCTestMode"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v8

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v5, v13

    move-object v10, v4

    move-object v11, v12

    invoke-direct/range {v5 .. v11}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v6, 0xd5

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    invoke-virtual {v3, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const/4 v10, 0x3

    invoke-direct {v0, v7, v9, v10, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7, v9, v9, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v6, "RULE_ADD_FOR_ALL"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v11, "OIMCTestMode"

    invoke-virtual {v3, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v13, "OIMCTestMode"

    invoke-virtual {v11, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    invoke-direct {v0, v8, v9, v9, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v7, v9, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStartConfig(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v8, "MODE_ENTER"

    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v8, v11, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const/4 v8, 0x2

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v11

    const-string v13, "OIMCTestMode"

    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    const-string v14, "OIMCTestMode"

    invoke-virtual {v13, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    invoke-direct {v0, v11, v9, v9, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11, v9, v7, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11, v12}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStopConfig(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v11, "MODE_EXIT"

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v11, v13, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v11

    const-string v13, "OIMCTestMode"

    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    const-string v14, "OIMCTestMode"

    invoke-virtual {v13, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    invoke-direct {v0, v11, v9, v9, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const-string/jumbo v11, "startPar2"

    const-string/jumbo v15, "stopPar2"

    new-instance v20, Lcom/oneplus/oimc/OIMCRule;

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x2

    const-string v13, "OIMCTestMode"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object/from16 v13, v20

    move-object/from16 v21, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v11

    move-object/from16 v19, v21

    invoke-direct/range {v13 .. v19}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v20

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    invoke-virtual {v3, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {v0, v13, v9, v10, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6, v9, v7, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    move-object/from16 v14, v21

    invoke-virtual {v6, v14}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStopConfig(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object/from16 v20, v14

    move-object v8, v15

    goto/16 :goto_4

    :cond_3
    const-string v6, "RULE_ADD_FOR_ALL"

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v6, v13, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const/16 v6, 0xd6

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    invoke-virtual {v3, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {v0, v13, v9, v10, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6, v7, v9, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStartConfig(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    move-object/from16 v20, v14

    move-object v8, v15

    goto/16 :goto_3

    :cond_4
    const-string v6, "RULE_REMOVE_FOR_ALL"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v6, 0x2

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v6, "OIMCTestMode"

    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v13, "OIMCTestMode"

    invoke-virtual {v6, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {v0, v8, v9, v9, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    new-instance v6, Lcom/oneplus/oimc/OIMCRule;

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x1

    const-string v13, "OIMCTestMode"

    filled-new-array {v13}, [Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    move-object v13, v6

    move-object/from16 v20, v14

    move-object v14, v8

    move-object v8, v15

    move/from16 v15, v16

    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v11

    move-object/from16 v19, v20

    invoke-direct/range {v13 .. v19}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v13, 0xd5

    invoke-static {v13}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-direct {v0, v13, v9, v10, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13, v9, v9, v9}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v13

    if-nez v13, :cond_5

    const-string v7, "RUN_RULE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_5
    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    const-string v14, "OIMCTestMode"

    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    const-string v15, "OIMCTestMode"

    invoke-virtual {v14, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-direct {v0, v13, v9, v9, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13, v7, v9, v9}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13, v11}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStartConfig(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_2

    :cond_6
    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    const/16 v13, 0xd6

    invoke-static {v13}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v14

    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    invoke-direct {v0, v14, v9, v10, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13, v9, v9, v9}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v13

    if-eqz v13, :cond_a

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStopConfig(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_7

    goto :goto_1

    :cond_7
    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const/16 v13, 0xd6

    invoke-static {v13}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    invoke-virtual {v3, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-direct {v0, v13, v9, v10, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v9, v7, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v12}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStopConfig(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_0

    :cond_8
    const/4 v10, 0x2

    invoke-static {v10}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    const-string v13, "OIMCTestMode"

    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    const-string v14, "OIMCTestMode"

    invoke-virtual {v13, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    invoke-direct {v0, v10, v9, v9, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    return v7

    :cond_9
    :goto_0
    const-string v7, "RULE_REMOVE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_a
    :goto_1
    const-string v7, "RULE_REMOVE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_b
    :goto_2
    const-string v7, "RUN_RULE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_c
    move-object/from16 v20, v14

    move-object v8, v15

    :goto_3
    const-string v6, "RULE_REMOVE_FOR_ALL"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_d
    move-object v8, v15

    move-object/from16 v20, v21

    :goto_4
    const-string v6, "RULE_ADD_FOR_ALL"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_e
    :goto_5
    const-string v6, "MODE_EXIT"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9

    :cond_f
    :goto_6
    const-string v6, "MODE_ENTER"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v9
.end method

.method private ruleSubTest130x()Z
    .locals 10

    const-string v0, "      ruleSubTest130x"

    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest130x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const/4 v3, 0x5

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v5, 0x1

    invoke-virtual {v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    :cond_0
    const-string v4, "131.1/131.2 MODE_TRANSITION check"

    const-string v7, "func start/stop"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v4, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    :cond_1
    const-string v4, "132.1/132.2 MODE_ENTER check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v7, "OIMCTestMode"

    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v4, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v5, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    :cond_2
    const-string v4, "132.1/132.2 MODE_TRANSITION check"

    const-string v7, "func start/stop"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v9, "OIMCTestMode2"

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v7, v6, v6, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v9, "OIMCTestMode"

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v7, v6, v6, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7, v5, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_2

    :cond_3
    const-string v7, "134.1/134.2/134.3 MODE_EXIT/MODE_ENTER"

    const-string v8, "func start"

    invoke-direct {p0, v0, v7, v8, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v7, "OIMCTestMode"

    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v3, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const-string v3, "135.1/135.2 MODE_TRANSITION"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v3, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v7, "OIMCTestMode"

    invoke-virtual {v4, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v6, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v6, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const-string v3, "136.1/136.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_6
    :goto_0
    const-string v3, "136.1/136.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_7
    :goto_1
    const-string v3, "135.1/135.2 MODE_TRANSITION"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_8
    :goto_2
    const-string v3, "134.1/134.2/134.3 MODE_EXIT/MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_9
    :goto_3
    const-string v3, "133.1/133.2 MODE_TRANSITION check"

    const-string v4, "func start/stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_a
    :goto_4
    const-string v3, "132.1/132.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_b
    :goto_5
    const-string v3, "131.1/131.2 MODE_TRANSITION check"

    const-string v4, "func start/stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6
.end method

.method private ruleSubTest140x()Z
    .locals 9

    const-string v0, "      ruleSubTest140x"

    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest140x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const-string v3, "OIMCTestMode2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x65

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "TestOneshotFunc"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v6, 0x583

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "TestOneshotFunc2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v8, 0x584

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "TestRepeatFunc"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/16 v5, 0x585

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v3, "141.4/141.5 MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    const/4 v3, 0x3

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v7, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    :cond_1
    const-string v4, "142.1/142.2 MODE_SWITCH"

    const-string v5, "func start"

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode2"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v7, v6, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    :cond_2
    const-string v3, "143.1/143.2 MODE_SWITCH"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v7, v6, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "144.1/144.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v3, "OIMCTestMode2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v3, 0x66

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "TestOneshotFunc"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v8, 0x5ab

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "TestOneshotFunc2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v8, 0x5ac

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "TestRepeatFunc"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/16 v5, 0x5ad

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    return v6

    :cond_4
    :goto_0
    const-string v3, "144.1/144.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_5
    :goto_1
    const-string v3, "143.1/143.2 MODE_SWITCH"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_6
    :goto_2
    const-string v3, "142.1/142.2 MODE_SWITCH"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_7
    :goto_3
    const-string v3, "141.4/141.5 MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7
.end method

.method private ruleSubTest20x()Z
    .locals 8

    const-string v0, "      ruleSubTest20x"

    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest20x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v3, "20.3 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v3, "20.4 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode2"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode2"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v3, "20.5 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    const/4 v3, 0x2

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v4, "20.6 MODE_EXIT check"

    const-string v6, "funcs stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_3

    :cond_4
    const-string v4, "20.7 MODE_ENTER check"

    const-string v6, "funcs start"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode2"

    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_2

    :cond_5
    const-string v4, "20.8 MODE_EXIT check"

    const-string v6, "func stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    :cond_6
    const-string v4, "20.9 MODE_EXIT check"

    const-string v6, "func stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const-string v3, "20.10 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_8
    :goto_0
    const-string v2, "20.10 MODE_EXIT check"

    const-string v3, "func no act"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_9
    :goto_1
    const-string v2, "20.9 MODE_EXIT check"

    const-string v3, "func stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_a
    :goto_2
    const-string v2, "20.8 MODE_EXIT check"

    const-string v3, "func stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_b
    :goto_3
    const-string v2, "20.7 MODE_ENTER check"

    const-string v3, "funcs start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_c
    :goto_4
    const-string v2, "20.6 MODE_EXIT check"

    const-string v3, "funcs stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_d
    :goto_5
    const-string v2, "20.5 MODE_ENTER check"

    const-string v3, "func start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_e
    :goto_6
    const-string v2, "20.4 MODE_ENTER check"

    const-string v3, "func no act"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_f
    :goto_7
    const-string v2, "20.3 MODE_ENTER check"

    const-string v3, "func start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5
.end method

.method private ruleSubTest40x()Z
    .locals 13

    const-string v0, "      ruleSubTest40x"

    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest40x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    const/4 v3, 0x4

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_9

    :cond_0
    const-string v4, "41.1/41.2 MODE_CONFIG check"

    const-string v8, "func no act"

    const/4 v9, 0x1

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v4, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    :cond_1
    const-string v4, "42.1/42.2 MODE_ENTER check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v4, "OIMCTestMode3"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x65

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "TestOneshotFunc"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const/16 v11, 0x1a7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    invoke-direct {p0, v8, v9, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_7

    :cond_2
    const-string v8, "42.3/42.4 RULE_ADD check"

    const-string v10, "func start"

    invoke-direct {p0, v0, v8, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v8, 0x66

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v12, "TestOneshotFunc"

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const/16 v12, 0x1af

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_6

    :cond_3
    const-string v10, "43.1/43.2 RULE_REMOVE check"

    const-string v11, "func stop"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v12, "TestOneshotFunc"

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const/16 v12, 0x1b1

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_5

    :cond_4
    const-string v10, "43.3/43.4 RULE_ADD check"

    const-string v11, "func start"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v12, "TestOneshotFunc"

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const/16 v12, 0x1b3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_4

    :cond_5
    const-string v10, "43.5/43.6 RULE_ADD check"

    const-string v11, "func stop"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "TestOneshotFunc"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const/16 v11, 0x1b9

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    invoke-direct {p0, v8, v6, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_3

    :cond_6
    const-string v8, "44.1/44.2 RULE_REMOVE check"

    const-string v10, "func start"

    invoke-direct {p0, v0, v8, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode"

    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v3, v9, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_2

    :cond_7
    const-string v3, "45.1/45.2 MODE_CONFIG check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v3, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    :cond_8
    const-string v3, "46.1/46.2 MODE_EXIT check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode"

    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v3, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const-string v3, "47.1/47.2 MODE_EXIT check"

    const-string v5, "func stop"

    invoke-direct {p0, v0, v3, v5, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v3, "OIMCTestMode"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "TestOneshotFunc"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    return v9

    :cond_a
    :goto_0
    const-string v3, "47.1/47.2 MODE_EXIT check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_b
    :goto_1
    const-string v3, "46.1/46.2 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_c
    :goto_2
    const-string v3, "45.1/45.2 MODE_CONFIG check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_d
    :goto_3
    const-string v3, "44.1/44.2 RULE_REMOVE check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_e
    :goto_4
    const-string v3, "43.5/43.6 RULE_ADD check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_f
    :goto_5
    const-string v3, "43.3/43.4 RULE_ADD check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_10
    :goto_6
    const-string v3, "43.1/43.2 RULE_REMOVE check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_11
    :goto_7
    const-string v3, "42.3/42.4 RULE_ADD check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_12
    :goto_8
    const-string v3, "42.1/42.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5

    :cond_13
    :goto_9
    const-string v3, "41.1/41.2 MODE_CONFIG check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v5
.end method

.method private ruleSubTest70x()Z
    .locals 9

    const-string v0, "      ruleSubTest70x"

    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest70x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v3, "71.1/71.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_0
    const-string v4, "71.1/71.2 MODE_ENTER check"

    const-string v5, "func no act"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v3, "71.3/71.4 MODE_ENTER check"

    const-string v4, "func no start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_1
    const-string v4, "71.3/71.4 MODE_ENTER check"

    const-string v5, "func no start"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v4, "OIMCTestMode3"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v4, 0x65

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "TestRepeatFunc"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const/16 v7, 0x2d1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v3, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode3"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode3"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v3, "72.1/72.2/72.3 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_2
    const-string v4, "72.1/72.2/72.3 MODE_ENTER check"

    const-string v5, "func start"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    const/4 v4, 0x2

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v3, "72.4/72.5 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_3
    const-string v5, "72.4/72.5 MODE_EXIT check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v3, "73.1/73.2 MODE_EXIT check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_4
    const-string v5, "73.1/73.2 MODE_EXIT check"

    const-string v7, "func start"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v3, "74.1/74.2 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_5
    const-string v5, "74.1/74.2 MODE_EXIT check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode"

    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v3, "75.1/75.2/75.3 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_6
    const-string v4, "75.1/75.2/75.3 MODE_EXIT check"

    const-string v5, "func no act"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v4

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    const-string v5, "OIMCTestMode3"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v5, 0x66

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "TestRepeatFunc"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const/16 v8, 0x2db

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    invoke-direct {p0, v5, v3, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v5

    add-int/lit8 v7, v5, 0x1

    if-eq v4, v7, :cond_7

    const-string v3, "76.1/76.2 RULE_REMOVE check"

    const-string/jumbo v7, "rule removed"

    invoke-direct {p0, v0, v3, v7, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_7
    const-string v7, "76.1/76.2 RULE_REMOVE check"

    const-string/jumbo v8, "rule removed"

    invoke-direct {p0, v0, v7, v8, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_8

    const-string v3, "76.1/76.2 RULE_REMOVE check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v3, v7, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6

    :cond_8
    const-string v6, "76.1/76.2 RULE_REMOVE check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v6, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v3
.end method

.method private runRuleTest()Z
    .locals 13

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting runRuleTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "    runRuleTest"

    const/16 v1, 0x55

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    new-instance v3, Lcom/oneplus/oimc/OIMCRule;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {v3, v4, v6, v5, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    const/16 v4, 0xd9

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const/4 v9, 0x3

    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_0
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v8, "OIMCTestMode"

    invoke-virtual {v2, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v5, v7, v7, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_1
    const-string v5, "RUN_RULE_FOR_ALL"

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    new-instance v5, Lcom/oneplus/oimc/OIMCRule;

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v6, v10, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    move-object v3, v5

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_2
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v2, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode2"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v5, v7, v7, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_3

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_3
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    new-instance v5, Lcom/oneplus/oimc/OIMCRule;

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    const-string v11, "OIMCTestMode2"

    filled-new-array {v10, v11}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v6, v10, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    move-object v3, v5

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_4
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    const/4 v5, 0x2

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "OIMCTestMode"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    invoke-direct {p0, v8, v7, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_5

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_5
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    new-instance v8, Lcom/oneplus/oimc/OIMCRule;

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    const-string v11, "OIMCTestMode"

    const-string v12, "OIMCTestMode2"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v10, v6, v11, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    move-object v3, v8

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-direct {p0, v4, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_6
    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    invoke-direct {p0, v4, v7, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v7

    :cond_7
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return v6
.end method

.method private sendMessageSynced(IIILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/OIMCService;->flushMessage(Z)Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "OIMCTest"

    return-object v0
.end method

.method public startTest()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    if-eqz v0, :cond_0

    const-string v0, "OIMCTest"

    const-string v1, "Can\'t start the OIMC selt test, it is in running status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "OIMCTest"

    const-string v1, "================== Starting The OIMC Self Test ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->enterTestMode()V

    new-instance v0, Lcom/oneplus/server/OIMCTest$1TestThread;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCTest$1TestThread;-><init>(Lcom/oneplus/server/OIMCTest;)V

    const-string v1, "OIMCTest"

    const-string v2, "================== Starting OIMC TestThread ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCTest$1TestThread;->start()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
