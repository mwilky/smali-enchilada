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

    .line 46
    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    return-void
.end method

.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 1
    .param p1, "oimcService"    # Lcom/oneplus/server/OIMCService;

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const-string v0, "OIMCTest"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TAG:Ljava/lang/String;

    .line 31
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    .line 32
    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    .line 33
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->printDebug:Z

    .line 34
    const-string v0, "OIMCTest"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->name:Ljava/lang/String;

    .line 35
    const-string v0, "OIMCTestMode"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode:Ljava/lang/String;

    .line 36
    const-string v0, "OIMCTestMode2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode2:Ljava/lang/String;

    .line 37
    const-string v0, "OIMCTestMode3"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->OIMCTestMode3:Ljava/lang/String;

    .line 38
    const-string v0, "TestOneshotFunc"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestOneshotFunc:Ljava/lang/String;

    .line 39
    const-string v0, "TestOneshotFunc2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestOneshotFunc2:Ljava/lang/String;

    .line 40
    const-string v0, "TestRepeatFunc"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestRepeatFunc:Ljava/lang/String;

    .line 41
    const-string v0, "TestRepeatFunc2"

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest;->TestRepeatFunc2:Ljava/lang/String;

    .line 49
    iput-object p1, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/OIMCTest;ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Message;
    .param p3, "x3"    # Lcom/oneplus/server/MsgObjectArg;

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/server/OIMCTest;)Lcom/oneplus/server/OIMCService;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/server/OIMCTest;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p1, "x1"    # Z

    .line 28
    iput-boolean p1, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->functionTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->runRuleTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->ruleConfigTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->modeChangeTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->ruleAddRemoveTest()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/oneplus/server/OIMCTest;)Z
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->registerFuncsAndModes()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;
    .param p4, "x4"    # Z

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/server/OIMCTest;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCTest;

    .line 28
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->exitTestMode()V

    return-void
.end method

.method private checkContainedFuncs([Ljava/lang/String;)Z
    .locals 5
    .param p1, "names"    # [Ljava/lang/String;

    .line 105
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 107
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 108
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$1;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$1;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 124
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 125
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
    .param p1, "names"    # [Ljava/lang/String;

    .line 130
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 132
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 133
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$2;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 149
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 150
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
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "prio"    # I

    .line 164
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 165
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 166
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$3;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$3;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 177
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    new-instance v4, Lcom/oneplus/server/OIMCTest$1checkModePrio;

    invoke-direct {v4, p0, p1, p2}, Lcom/oneplus/server/OIMCTest$1checkModePrio;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 178
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
    .param p1, "name"    # Ljava/lang/String;

    .line 273
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 276
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 277
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$5;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$5;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 288
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 289
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

    .line 237
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 238
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 239
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$4;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$4;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 255
    .local v2, "clear":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 258
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v5, "SystemMode"

    .line 260
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 258
    const/4 v6, 0x0

    invoke-direct {p0, v3, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 262
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

    .line 265
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-direct {v3, p0, v5, v7, v8}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 266
    .local v3, "tst":Lcom/oneplus/server/OIMCTest$testModeStatus;
    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v5

    if-nez v5, :cond_0

    .line 267
    return v6

    .line 269
    :cond_0
    return v4
.end method

.method private dumpAllSysInfo()V
    .locals 6

    .line 70
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 71
    .local v0, "msg":Landroid/os/Message;
    const/16 v1, 0x2712

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 72
    const/16 v1, 0x3f

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 73
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->arg2:I

    .line 74
    const/4 v1, 0x0

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 75
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    iget v2, v0, Landroid/os/Message;->what:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    iget v4, v0, Landroid/os/Message;->arg2:I

    iget-object v5, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 76
    return-void
.end method

.method private enterTestMode()V
    .locals 3

    .line 2321
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Enter OIMC TestMode ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2322
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    .line 2323
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestMode"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2322
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2324
    return-void
.end method

.method private exitTestMode()V
    .locals 4

    .line 2327
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Exit OIMC TestMode ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2328
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    const/4 v1, 0x2

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 2329
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestMode"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2328
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 2331
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->flushMessage()Z

    .line 2332
    return-void
.end method

.method private functionTest()Z
    .locals 7

    .line 512
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting functionTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    const-string v0, "    functionTest"

    .line 514
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x55

    .line 515
    .local v1, "rinfo":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 517
    .local v2, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 518
    const/16 v3, 0x68

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 519
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 518
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 521
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v6, 0x1

    invoke-virtual {v3, v6, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkConfigStatus(ILjava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 522
    const-string v3, "FUNC_CONFIG"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 523
    return v5

    .line 527
    :cond_0
    const-string v3, "FUNC_CONFIG"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 529
    return v6
.end method

.method public static declared-synchronized getInstance(Lcom/oneplus/server/OIMCService;)Lcom/oneplus/server/OIMCTest;
    .locals 2
    .param p0, "service"    # Lcom/oneplus/server/OIMCService;

    const-class v0, Lcom/oneplus/server/OIMCTest;

    monitor-enter v0

    .line 53
    :try_start_0
    sget-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    if-nez v1, :cond_0

    .line 54
    new-instance v1, Lcom/oneplus/server/OIMCTest;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OIMCTest;-><init>(Lcom/oneplus/server/OIMCService;)V

    sput-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;

    .line 55
    :cond_0
    sget-object v1, Lcom/oneplus/server/OIMCTest;->instance:Lcom/oneplus/server/OIMCTest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 52
    .end local p0    # "service":Lcom/oneplus/server/OIMCService;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private getRuleCount()I
    .locals 5

    .line 753
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 755
    .local v0, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 756
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Lcom/oneplus/server/OIMCTest$6;

    invoke-direct {v2, p0, v1}, Lcom/oneplus/server/OIMCTest$6;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/MsgObjectArg;)V

    .line 763
    .local v2, "check":Lcom/oneplus/server/OIMCTest$checkSysInfo;
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x4

    invoke-direct {p0, v4, v0, v3}, Lcom/oneplus/server/OIMCTest;->handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V

    .line 764
    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$checkSysInfo;->getResult()I

    move-result v3

    return v3
.end method

.method private handleSysInfo(ILandroid/os/Message;Lcom/oneplus/server/MsgObjectArg;)V
    .locals 4
    .param p1, "arg1"    # I
    .param p2, "msg"    # Landroid/os/Message;
    .param p3, "arg"    # Lcom/oneplus/server/MsgObjectArg;

    .line 63
    const/16 v0, 0x2711

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    iput v0, p2, Landroid/os/Message;->what:I

    .line 64
    iput p1, p2, Landroid/os/Message;->arg1:I

    .line 65
    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 66
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    iget v1, p2, Landroid/os/Message;->what:I

    iget v2, p2, Landroid/os/Message;->arg1:I

    iget v3, p2, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2, v3, p3}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 67
    return-void
.end method

.method private modeChangeTest()Z
    .locals 13

    .line 2189
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting modeChangeTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2190
    const-string v0, "    modeChangeTest"

    .line 2191
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x55

    .line 2192
    .local v1, "rinfo":I
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 2193
    .local v2, "msg":Landroid/os/Message;
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 2194
    .local v3, "arg":Lcom/oneplus/server/MsgObjectArg;
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    .line 2196
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->clearOIMCTestModes()Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_0

    .line 2197
    const-string v4, "clearOIMCTestModes"

    const-string v6, ""

    invoke-direct {p0, v0, v4, v6, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2198
    return v5

    .line 2202
    :cond_0
    const-string v4, "clearOIMCTestModes"

    const-string v6, ""

    const/4 v7, 0x1

    invoke-direct {p0, v0, v4, v6, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2205
    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 2206
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 2205
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2207
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

    .line 2210
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-direct {v4, p0, v6, v8, v9}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    .line 2211
    .local v4, "tst":Lcom/oneplus/server/OIMCTest$testModeStatus;
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v6

    if-nez v6, :cond_1

    .line 2212
    const-string v6, "MODE_ENTER"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2213
    return v5

    .line 2216
    :cond_1
    const-string v6, "MODE_ENTER"

    const-string v8, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v8, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2219
    const/4 v6, 0x3

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v9, "SystemMode"

    .line 2220
    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    const-string v10, "OIMCTestMode"

    invoke-virtual {v9, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    .line 2219
    invoke-direct {p0, v8, v5, v5, v9}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2221
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

    .line 2226
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v8

    if-nez v8, :cond_2

    .line 2227
    const-string v6, "MODE_SWITCH test bewteen SystemMode and"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2228
    return v5

    .line 2231
    :cond_2
    const-string v8, "MODE_SWITCH test bewteen SystemMode and"

    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v0, v8, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2234
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "SystemMode"

    .line 2235
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2234
    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2236
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

    .line 2241
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_3

    .line 2242
    const-string v6, "MODE_EXIT test for "

    const-string v7, "SystemMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2243
    return v5

    .line 2246
    :cond_3
    const-string v9, "MODE_EXIT test for "

    const-string v10, "SystemMode"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2249
    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode2"

    .line 2250
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2249
    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2251
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

    .line 2254
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    .line 2255
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_4

    .line 2256
    const-string v6, "MODE_ENTER"

    const-string v7, "OIMCTestMode2"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2257
    return v5

    .line 2260
    :cond_4
    const-string v9, "MODE_ENTER"

    const-string v10, "OIMCTestMode2"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2263
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode"

    .line 2264
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2263
    invoke-direct {p0, v9, v5, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2265
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

    .line 2268
    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    invoke-direct {v9, p0, v10, v11, v12}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v9

    .line 2269
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v9

    if-nez v9, :cond_5

    .line 2270
    const-string v6, "MODE_EXIT"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2271
    return v5

    .line 2274
    :cond_5
    const-string v9, "MODE_EXIT"

    const-string v10, "OIMCTestMode"

    invoke-direct {p0, v0, v9, v10, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2277
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v9, "OIMCTestMode2"

    .line 2278
    invoke-virtual {v3, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v9

    .line 2277
    invoke-direct {p0, v8, v5, v5, v9}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2279
    new-instance v8, Lcom/oneplus/server/OIMCTest$testModeStatus;

    new-array v9, v5, [Ljava/lang/String;

    const-string v10, "OIMCTestMode"

    const-string v11, "OIMCTestMode2"

    const-string v12, "OIMCTestMode3"

    filled-new-array {v10, v11, v12}, [Ljava/lang/String;

    move-result-object v10

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 2282
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    invoke-direct {v8, p0, v9, v10, v11}, Lcom/oneplus/server/OIMCTest$testModeStatus;-><init>(Lcom/oneplus/server/OIMCTest;[Ljava/lang/String;[Ljava/lang/String;I)V

    move-object v4, v8

    .line 2283
    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testModeStatus;->checkModeStatus()Z

    move-result v8

    if-nez v8, :cond_6

    .line 2284
    const-string v6, "MODE_EXIT"

    const-string v7, "OIMCTestMode2"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2285
    return v5

    .line 2288
    :cond_6
    const-string v8, "MODE_EXIT"

    const-string v9, "OIMCTestMode2"

    invoke-direct {p0, v0, v8, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2291
    const/4 v8, 0x4

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v9

    const-string v10, "OIMCTestMode"

    .line 2294
    invoke-virtual {v3, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 2291
    invoke-direct {p0, v9, v6, v5, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2295
    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v9, v6}, Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_7

    .line 2296
    const-string v6, "MODE_CONFIG priority 3"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2297
    return v5

    .line 2300
    :cond_7
    const-string v6, "MODE_CONFIG priority 3"

    const-string v9, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v9, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2302
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v6

    const-string v8, "OIMCTestMode"

    .line 2305
    invoke-virtual {v3, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 2302
    invoke-direct {p0, v6, v7, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2306
    const-string v6, "OIMCTestMode"

    invoke-direct {p0, v6, v7}, Lcom/oneplus/server/OIMCTest;->checkModePriority(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8

    .line 2307
    const-string v6, "MODE_CONFIG priority 1"

    const-string v7, "OIMCTestMode"

    invoke-direct {p0, v0, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2308
    return v5

    .line 2311
    :cond_8
    const-string v5, "MODE_CONFIG priority 1"

    const-string v6, "OIMCTestMode"

    invoke-direct {p0, v0, v5, v6, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2312
    return v7
.end method

.method private printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "act"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/String;
    .param p4, "success"    # Z

    .line 412
    if-eqz p4, :cond_0

    .line 413
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

    .line 415
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

    .line 416
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

    .line 417
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 419
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private registerFuncsAndModes()Z
    .locals 8

    .line 422
    monitor-enter p0

    .line 423
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 424
    monitor-exit p0

    return v1

    .line 425
    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/server/OIMCTest;->isRegistered:Z

    .line 426
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 428
    const-string v0, "OIMCTest"

    const-string v2, "  ================= Registering OIMCTest modes and functions ================="

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    const-string v0, "    registerFuncsAndModes"

    .line 430
    .local v0, "prefix":Ljava/lang/String;
    new-instance v2, Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 431
    new-instance v2, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 432
    new-instance v2, Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    .line 433
    new-instance v2, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-direct {v2, p0, v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;-><init>(Lcom/oneplus/server/OIMCTest;Lcom/oneplus/server/OIMCTest$1;)V

    iput-object v2, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    .line 435
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 437
    .local v2, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/16 v3, 0xc9

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    new-instance v5, Lcom/oneplus/server/SceneMode;

    const-string v6, "OIMCTestMode"

    invoke-direct {v5, v6, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    .line 438
    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 437
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 439
    const-string v4, "OIMCTestMode"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 440
    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 441
    return v6

    .line 444
    :cond_1
    const-string v4, "Register mode"

    const-string v5, "OIMCTestMode"

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 446
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    new-instance v5, Lcom/oneplus/server/SceneMode;

    const-string v7, "OIMCTestMode2"

    invoke-direct {v5, v7, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    .line 447
    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 446
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 448
    const-string v4, "OIMCTestMode2"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 449
    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode2"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 450
    return v6

    .line 453
    :cond_2
    const-string v4, "Register mode"

    const-string v5, "OIMCTestMode2"

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 455
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    new-instance v4, Lcom/oneplus/server/SceneMode;

    const-string v5, "OIMCTestMode3"

    invoke-direct {v4, v5, v1}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    .line 456
    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 455
    invoke-direct {p0, v3, v6, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 457
    const-string v3, "OIMCTestMode3"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/server/OIMCTest;->checkContainedModes([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 458
    const-string v1, "Register mode"

    const-string v3, "OIMCTestMode3"

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 459
    return v6

    .line 462
    :cond_3
    const-string v3, "Register mode"

    const-string v4, "OIMCTestMode3"

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 464
    const/16 v3, 0xca

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 467
    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 464
    invoke-direct {p0, v4, v1, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 468
    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 469
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 470
    return v6

    .line 473
    :cond_4
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 475
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 478
    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 475
    invoke-direct {p0, v4, v1, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 479
    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 480
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 481
    return v6

    .line 484
    :cond_5
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 486
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    .line 489
    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 486
    const/4 v7, 0x2

    invoke-direct {p0, v4, v7, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 490
    new-array v4, v1, [Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-direct {p0, v4}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 491
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 492
    return v6

    .line 495
    :cond_6
    const-string v4, "Register function"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 497
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    .line 500
    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 497
    invoke-direct {p0, v3, v7, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 501
    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-direct {p0, v3}, Lcom/oneplus/server/OIMCTest;->checkContainedFuncs([Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 502
    const-string v1, "Register function"

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v3, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 503
    return v6

    .line 506
    :cond_7
    const-string v3, "Register function"

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc2:Lcom/oneplus/server/OIMCTest$testRepeatFunc2;

    invoke-static {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc2;->access$600(Lcom/oneplus/server/OIMCTest$testRepeatFunc2;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v0, v3, v4, v1}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 508
    return v1

    .line 426
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v2    # "arg":Lcom/oneplus/server/MsgObjectArg;
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

    .line 1721
    move-object/from16 v6, p0

    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting ruleAddRemoveTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    const-string v7, "    ruleAddRemoveTest"

    .line 1724
    .local v7, "prefix":Ljava/lang/String;
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->clearOIMCTestModes()Z

    move-result v0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    .line 1725
    const-string v0, "clearOIMCTestModes"

    const-string v1, ""

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1726
    return v8

    .line 1728
    :cond_0
    const-string v0, "clearOIMCTestModes"

    const-string v1, ""

    const/4 v9, 0x1

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1730
    const/4 v5, 0x1

    .line 1731
    .local v5, "index":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 1734
    .local v10, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v0

    .line 1735
    .local v11, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1736
    const/16 v12, 0x65

    invoke-static {v12}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 1739
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1736
    const/4 v13, 0x3

    invoke-direct {v6, v0, v9, v13, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1740
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    add-int/lit8 v15, v5, 0x1

    .line 1740
    .local v15, "index":I
    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    .line 1740
    .end local v5    # "index":I
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1741
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1742
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v8}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1743
    return v8

    .line 1746
    :cond_1
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1754
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 1755
    .local v14, "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1756
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1757
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1758
    invoke-static {v12}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 1761
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc2"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1758
    invoke-direct {v6, v0, v9, v13, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1762
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v5

    .line 1763
    .local v5, "cCount":I
    new-instance v4, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc2"

    const/16 v16, 0x1

    add-int/lit8 v2, v15, 0x1

    .line 1763
    .local v2, "index":I
    move-object v0, v4

    move-object v1, v6

    move v13, v2

    move-object v2, v11

    .line 1763
    .end local v2    # "index":I
    .local v13, "index":I
    move-object v12, v4

    move/from16 v4, v16

    move v8, v5

    move v5, v15

    .line 1763
    .end local v5    # "cCount":I
    .end local v15    # "index":I
    .local v8, "cCount":I
    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1764
    invoke-virtual {v12}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_25

    add-int/lit8 v0, v14, 0x1

    if-eq v0, v8, :cond_2

    goto/16 :goto_c

    .line 1769
    :cond_2
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1771
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest20x()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1772
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest20x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1773
    return v2

    .line 1776
    :cond_3
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest20x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1783
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v0

    .line 1784
    .end local v14    # "pCount":I
    .local v0, "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1785
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1786
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 1789
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1786
    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1790
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 1791
    .end local v8    # "cCount":I
    .local v1, "cCount":I
    if-eq v0, v1, :cond_4

    .line 1792
    const-string v2, "Check same rule"

    const-string v3, "OIMCTestMode/TestOneshotFunc/ENABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1793
    return v4

    .line 1796
    :cond_4
    const-string v2, "Check same rule"

    const-string v3, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1807
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1808
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1809
    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    const-string v3, "OIMCTestMode"

    .line 1810
    invoke-virtual {v10, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const-string v4, "OIMCTestMode"

    invoke-virtual {v3, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 1809
    const/4 v4, 0x0

    invoke-direct {v6, v2, v4, v4, v3}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1811
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2, v9, v4, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v2

    if-eqz v2, :cond_24

    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1812
    invoke-virtual {v2, v4, v4, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1813
    const/4 v2, 0x0

    goto/16 :goto_b

    .line 1818
    :cond_5
    const-string v2, "Check TestOneshotFunc"

    const-string/jumbo v3, "start"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1819
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1820
    iget-object v2, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1821
    move v8, v1

    .line 1822
    .end local v0    # "pCount":I
    .local v8, "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1823
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1824
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 1827
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 1824
    const/4 v12, 0x2

    const/4 v3, 0x3

    invoke-direct {v6, v2, v12, v3, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1828
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 1829
    .end local v1    # "cCount":I
    .local v14, "cCount":I
    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x2

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1830
    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_23

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_6

    goto/16 :goto_a

    .line 1835
    :cond_6
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1837
    iget-object v0, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v9, v1}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, v6, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1838
    invoke-virtual {v0, v1, v1, v1}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1839
    const/4 v2, 0x0

    goto/16 :goto_9

    .line 1843
    :cond_7
    const-string v0, "Check TestOneshotFunc"

    const-string/jumbo v1, "stop"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1845
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest40x()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1846
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest40x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1847
    return v2

    .line 1850
    :cond_8
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest40x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1858
    move v0, v14

    .line 1859
    .end local v8    # "pCount":I
    .restart local v0    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1860
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1861
    const-string v1, "OIMCTestMode2"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1862
    const/16 v1, 0x65

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 1865
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v3, "TestOneshotFunc2"

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1862
    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1866
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 1867
    .end local v14    # "cCount":I
    .restart local v1    # "cCount":I
    if-eq v0, v1, :cond_9

    .line 1868
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1869
    return v4

    .line 1872
    :cond_9
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1880
    move v0, v1

    .line 1881
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1882
    const-string v2, "OIMCTestMode"

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1883
    const-string v2, "OIMCTestMode2"

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1884
    const/16 v2, 0x65

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 1887
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v4, "TestOneshotFunc"

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 1884
    const/4 v4, 0x3

    invoke-direct {v6, v3, v12, v4, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1888
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 1889
    if-eq v0, v1, :cond_a

    .line 1890
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1891
    return v4

    .line 1894
    :cond_a
    const-string v2, "RULE_ADD"

    const-string v3, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1904
    move v8, v1

    .line 1905
    .end local v0    # "pCount":I
    .restart local v8    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1906
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1907
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1908
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v2

    .line 1911
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 1908
    const/4 v3, 0x3

    invoke-direct {v6, v2, v9, v3, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1912
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 1913
    .end local v1    # "cCount":I
    .restart local v14    # "cCount":I
    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1914
    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_21

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_b

    goto/16 :goto_8

    .line 1919
    :cond_b
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1921
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest70x()Z

    move-result v0

    if-nez v0, :cond_c

    .line 1922
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest70x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1923
    return v2

    .line 1926
    :cond_c
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest70x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1935
    move v8, v14

    .line 1936
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1937
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1938
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1939
    const-string v0, "OIMCTestMode3"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1940
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 1943
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v0, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 1940
    const/4 v2, 0x3

    invoke-direct {v6, v1, v9, v2, v0}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1944
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 1945
    new-instance v15, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v15

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1946
    invoke-virtual {v15}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_20

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v14, :cond_d

    goto/16 :goto_7

    .line 1953
    :cond_d
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1964
    move v8, v14

    .line 1965
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1966
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1967
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1968
    const/16 v15, 0x66

    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 1971
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc2"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1968
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1972
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v14

    .line 1973
    new-instance v5, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc2"

    const/4 v4, 0x1

    move-object v0, v5

    move-object v1, v6

    move-object v2, v11

    move-object v12, v5

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 1974
    invoke-virtual {v12}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1f

    add-int/lit8 v0, v14, 0x1

    if-eq v8, v0, :cond_e

    goto/16 :goto_6

    .line 1979
    :cond_e
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1988
    move v0, v14

    .line 1989
    .end local v8    # "pCount":I
    .restart local v0    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 1990
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1991
    const-string v1, "OIMCTestMode3"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1992
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 1995
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 1992
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v6, v1, v4, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1996
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 1997
    .end local v14    # "cCount":I
    .restart local v1    # "cCount":I
    if-eq v0, v1, :cond_f

    .line 1998
    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode,OIMCTestMode3/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1999
    return v4

    .line 2002
    :cond_f
    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode,OIMCTestMode3/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2012
    move v8, v1

    .line 2013
    .end local v0    # "pCount":I
    .restart local v8    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2014
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2015
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2016
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2019
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2016
    const/4 v3, 0x3

    invoke-direct {v6, v0, v9, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2020
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2021
    .end local v1    # "cCount":I
    .local v12, "cCount":I
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2022
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1e

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_10

    goto/16 :goto_5

    .line 2027
    :cond_10
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2035
    move v8, v12

    .line 2036
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2037
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2038
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2041
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2038
    const/4 v2, 0x3

    const/4 v3, 0x2

    invoke-direct {v6, v0, v3, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2042
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2043
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x2

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2044
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1d

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_11

    goto/16 :goto_4

    .line 2049
    :cond_11
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2058
    move v8, v12

    .line 2059
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2060
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2061
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2062
    const/16 v0, 0x65

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2065
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestRepeatFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2062
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2066
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2067
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2068
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-eqz v0, :cond_1c

    add-int/lit8 v0, v8, 0x1

    if-eq v0, v12, :cond_12

    goto/16 :goto_3

    .line 2073
    :cond_12
    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2075
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest130x()Z

    move-result v0

    if-nez v0, :cond_13

    .line 2076
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest130x"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2077
    return v2

    .line 2080
    :cond_13
    const-string/jumbo v0, "run"

    const-string/jumbo v1, "ruleSubTest130x"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2090
    move v0, v12

    .line 2091
    .end local v8    # "pCount":I
    .restart local v0    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2092
    const-string v1, "OIMCTestMode"

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2093
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    .line 2096
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestOneshotFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2093
    const/4 v3, 0x3

    const/4 v4, 0x2

    invoke-direct {v6, v1, v4, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2097
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v1

    .line 2098
    .end local v12    # "cCount":I
    .restart local v1    # "cCount":I
    if-eq v0, v1, :cond_14

    .line 2099
    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode/TestOneshotFunc/DISABLE"

    const/4 v4, 0x0

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2100
    return v4

    .line 2103
    :cond_14
    const/4 v4, 0x0

    const-string v2, "RULE_REMOVE"

    const-string v3, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2105
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->ruleSubTest140x()Z

    move-result v2

    if-nez v2, :cond_15

    .line 2106
    const-string/jumbo v2, "run"

    const-string/jumbo v3, "ruleSubTest140x"

    invoke-direct {v6, v7, v2, v3, v4}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2107
    return v4

    .line 2110
    :cond_15
    const-string/jumbo v2, "run"

    const-string/jumbo v3, "ruleSubTest140x"

    invoke-direct {v6, v7, v2, v3, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2118
    move v8, v1

    .line 2119
    .end local v0    # "pCount":I
    .restart local v8    # "pCount":I
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2120
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2121
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2122
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2125
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const-string v3, "TestRepeatFunc"

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 2122
    const/4 v3, 0x3

    invoke-direct {v6, v0, v9, v3, v2}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2126
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2127
    .end local v1    # "cCount":I
    .restart local v12    # "cCount":I
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestRepeatFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2128
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1b

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_16

    goto/16 :goto_2

    .line 2133
    :cond_16
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2140
    move v8, v12

    .line 2141
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2142
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2143
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2146
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2143
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2147
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2148
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2149
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_1a

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_17

    goto :goto_1

    .line 2154
    :cond_17
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2160
    move v8, v12

    .line 2161
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 2162
    const-string v0, "OIMCTestMode2"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2163
    const-string v0, "OIMCTestMode"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2164
    const-string v0, "OIMCTestMode3"

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2165
    invoke-static {v15}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v0

    .line 2168
    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    const-string v2, "TestOneshotFunc"

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 2165
    const/4 v2, 0x3

    invoke-direct {v6, v0, v9, v2, v1}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 2169
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v12

    .line 2170
    new-instance v14, Lcom/oneplus/server/OIMCTest$TestExistingRule;

    const-string v3, "TestOneshotFunc"

    const/4 v4, 0x1

    move-object v0, v14

    move-object v1, v6

    move-object v2, v11

    move v5, v13

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/server/OIMCTest$TestExistingRule;-><init>(Lcom/oneplus/server/OIMCTest;Ljava/util/ArrayList;Ljava/lang/String;II)V

    .line 2171
    invoke-virtual {v14}, Lcom/oneplus/server/OIMCTest$TestExistingRule;->checkExistingRule()Z

    move-result v0

    if-nez v0, :cond_19

    add-int/lit8 v0, v12, 0x1

    if-eq v8, v0, :cond_18

    goto :goto_0

    .line 2178
    :cond_18
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2181
    return v9

    .line 2172
    :cond_19
    :goto_0
    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    const/4 v2, 0x0

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2175
    return v2

    .line 2150
    :cond_1a
    :goto_1
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2151
    return v2

    .line 2129
    :cond_1b
    :goto_2
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2130
    return v2

    .line 2069
    :cond_1c
    :goto_3
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2070
    return v2

    .line 2045
    :cond_1d
    :goto_4
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2046
    return v2

    .line 2023
    :cond_1e
    :goto_5
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 2024
    return v2

    .line 1975
    .end local v12    # "cCount":I
    .restart local v14    # "cCount":I
    :cond_1f
    :goto_6
    const/4 v2, 0x0

    const-string v0, "RULE_REMOVE"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1976
    return v2

    .line 1947
    :cond_20
    :goto_7
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2,OIMCTestMode3/TestOneshotFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1950
    return v2

    .line 1915
    :cond_21
    :goto_8
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestRepeatFunc/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1916
    return v2

    .line 1839
    :cond_22
    move v2, v1

    :goto_9
    const-string v0, "Check TestOneshotFunc"

    const-string/jumbo v1, "stop"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1840
    return v2

    .line 1831
    :cond_23
    :goto_a
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode/TestOneshotFunc/DISABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1832
    return v2

    .line 1813
    .end local v8    # "pCount":I
    .end local v14    # "cCount":I
    .restart local v0    # "pCount":I
    .restart local v1    # "cCount":I
    :cond_24
    move v2, v4

    :goto_b
    const-string v3, "Check TestOneshotFunc"

    const-string/jumbo v4, "start"

    invoke-direct {v6, v7, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1814
    return v2

    .line 1765
    .end local v0    # "pCount":I
    .end local v1    # "cCount":I
    .local v8, "cCount":I
    .local v14, "pCount":I
    :cond_25
    :goto_c
    const/4 v2, 0x0

    const-string v0, "RULE_ADD"

    const-string v1, "OIMCTestMode,OIMCTestMode2/TestOneshotFunc2/ENABLE"

    invoke-direct {v6, v7, v0, v1, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1766
    return v2
.end method

.method private ruleConfigTest()Z
    .locals 23

    .line 533
    move-object/from16 v0, p0

    const-string v1, "OIMCTest"

    const-string v2, "  ================== Starting ruleConfigTest ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    const-string v1, "    ruleConfigTest"

    .line 535
    .local v1, "prefix":Ljava/lang/String;
    const/16 v2, 0x55

    .line 537
    .local v2, "rinfo":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 539
    .local v3, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v4, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 540
    const-string/jumbo v4, "startPar1"

    .line 541
    .local v4, "startPar1":Ljava/lang/String;
    const-string/jumbo v12, "stopPar1"

    .line 542
    .local v12, "stopPar1":Ljava/lang/String;
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

    .line 543
    .local v5, "rule1":Lcom/oneplus/oimc/OIMCRule;
    const/16 v6, 0xd5

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    .line 546
    invoke-virtual {v3, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 543
    const/4 v10, 0x3

    invoke-direct {v0, v7, v9, v10, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 547
    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7, v9, v9, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_0

    .line 548
    const-string v6, "RULE_ADD_FOR_ALL"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 549
    return v9

    .line 553
    :cond_0
    const/4 v7, 0x1

    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v11, "OIMCTestMode"

    .line 554
    invoke-virtual {v3, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    const-string v13, "OIMCTestMode"

    invoke-virtual {v11, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v11

    .line 553
    invoke-direct {v0, v8, v9, v9, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 555
    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v7, v9, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_f

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStartConfig(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    goto/16 :goto_6

    .line 561
    :cond_1
    const-string v8, "MODE_ENTER"

    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v1, v8, v11, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 564
    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 565
    const/4 v8, 0x2

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v11

    const-string v13, "OIMCTestMode"

    .line 566
    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    const-string v14, "OIMCTestMode"

    invoke-virtual {v13, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    .line 565
    invoke-direct {v0, v11, v9, v9, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 567
    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11, v9, v7, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v11

    if-eqz v11, :cond_e

    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11, v12}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStopConfig(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_2

    goto/16 :goto_5

    .line 573
    :cond_2
    const-string v11, "MODE_EXIT"

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v11, v13, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 576
    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v11

    const-string v13, "OIMCTestMode"

    .line 577
    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    const-string v14, "OIMCTestMode"

    invoke-virtual {v13, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    .line 576
    invoke-direct {v0, v11, v9, v9, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 580
    iget-object v11, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v11}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 581
    const-string/jumbo v11, "startPar2"

    .line 582
    .local v11, "startPar2":Ljava/lang/String;
    const-string/jumbo v15, "stopPar2"

    .line 583
    .local v15, "stopPar2":Ljava/lang/String;
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

    .end local v15    # "stopPar2":Ljava/lang/String;
    .local v21, "stopPar2":Ljava/lang/String;
    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v11

    move-object/from16 v19, v21

    invoke-direct/range {v13 .. v19}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v15, v20

    .line 584
    .local v15, "rule2":Lcom/oneplus/oimc/OIMCRule;
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    .line 587
    invoke-virtual {v3, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v14, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 584
    invoke-direct {v0, v13, v9, v10, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 588
    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6, v9, v7, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    move-object/from16 v14, v21

    invoke-virtual {v6, v14}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStopConfig(Ljava/lang/String;)Z

    move-result v6

    .end local v21    # "stopPar2":Ljava/lang/String;
    .local v14, "stopPar2":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 589
    move-object/from16 v20, v14

    move-object v8, v15

    goto/16 :goto_4

    .line 594
    :cond_3
    const-string v6, "RULE_ADD_FOR_ALL"

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v0, v1, v6, v13, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 597
    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 598
    const/16 v6, 0xd6

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    .line 601
    invoke-virtual {v3, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 598
    invoke-direct {v0, v13, v9, v10, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 602
    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6, v7, v9, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v6, v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStartConfig(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 603
    move-object/from16 v20, v14

    move-object v8, v15

    goto/16 :goto_3

    .line 608
    :cond_4
    const-string v6, "RULE_REMOVE_FOR_ALL"

    iget-object v8, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v1, v6, v8, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 611
    const/4 v6, 0x2

    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v6, "OIMCTestMode"

    .line 612
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v13, "OIMCTestMode"

    invoke-virtual {v6, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 611
    invoke-direct {v0, v8, v9, v9, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 615
    iget-object v6, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 616
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

    .end local v14    # "stopPar2":Ljava/lang/String;
    .local v20, "stopPar2":Ljava/lang/String;
    move-object v8, v15

    move/from16 v15, v16

    .line 616
    .end local v15    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .local v8, "rule2":Lcom/oneplus/oimc/OIMCRule;
    move-object/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v11

    move-object/from16 v19, v20

    invoke-direct/range {v13 .. v19}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 617
    .local v6, "rule3":Lcom/oneplus/oimc/OIMCRule;
    const/16 v13, 0xd5

    invoke-static {v13}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    .line 620
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    .line 617
    invoke-direct {v0, v13, v9, v10, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 621
    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13, v9, v9, v9}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v13

    if-nez v13, :cond_5

    .line 622
    const-string v7, "RUN_RULE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 623
    return v9

    .line 627
    :cond_5
    invoke-static {v7}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    const-string v14, "OIMCTestMode"

    .line 628
    invoke-virtual {v3, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    const-string v15, "OIMCTestMode"

    invoke-virtual {v14, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    .line 627
    invoke-direct {v0, v13, v9, v9, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 629
    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13, v7, v9, v9}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v13

    if-eqz v13, :cond_b

    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13, v11}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStartConfig(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_6

    goto/16 :goto_2

    .line 635
    :cond_6
    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 636
    const/16 v13, 0xd6

    invoke-static {v13}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v14

    .line 639
    invoke-virtual {v3, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    .line 636
    invoke-direct {v0, v14, v9, v10, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 640
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

    .line 646
    :cond_7
    iget-object v13, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v13}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 647
    const/16 v13, 0xd6

    invoke-static {v13}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v13

    .line 650
    invoke-virtual {v3, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v14

    .line 647
    invoke-direct {v0, v13, v9, v10, v14}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 651
    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v9, v7, v9}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_9

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v12}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStopConfig(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_8

    goto :goto_0

    .line 656
    :cond_8
    const/4 v10, 0x2

    invoke-static {v10}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    const-string v13, "OIMCTestMode"

    .line 657
    invoke-virtual {v3, v13}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    const-string v14, "OIMCTestMode"

    invoke-virtual {v13, v14}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v13

    .line 656
    invoke-direct {v0, v10, v9, v9, v13}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 659
    return v7

    .line 652
    :cond_9
    :goto_0
    const-string v7, "RULE_REMOVE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 653
    return v9

    .line 641
    :cond_a
    :goto_1
    const-string v7, "RULE_REMOVE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 642
    return v9

    .line 630
    :cond_b
    :goto_2
    const-string v7, "RUN_RULE_FOR_ALL"

    iget-object v10, v0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v1, v7, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 631
    return v9

    .line 603
    .end local v6    # "rule3":Lcom/oneplus/oimc/OIMCRule;
    .end local v8    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v20    # "stopPar2":Ljava/lang/String;
    .restart local v14    # "stopPar2":Ljava/lang/String;
    .restart local v15    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    :cond_c
    move-object/from16 v20, v14

    move-object v8, v15

    .line 603
    .end local v14    # "stopPar2":Ljava/lang/String;
    .end local v15    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v8    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v20    # "stopPar2":Ljava/lang/String;
    :goto_3
    const-string v6, "RULE_REMOVE_FOR_ALL"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 604
    return v9

    .line 589
    .end local v8    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v20    # "stopPar2":Ljava/lang/String;
    .restart local v15    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v21    # "stopPar2":Ljava/lang/String;
    :cond_d
    move-object v8, v15

    move-object/from16 v20, v21

    .line 589
    .end local v15    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v21    # "stopPar2":Ljava/lang/String;
    .restart local v8    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .restart local v20    # "stopPar2":Ljava/lang/String;
    :goto_4
    const-string v6, "RULE_ADD_FOR_ALL"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 590
    return v9

    .line 568
    .end local v8    # "rule2":Lcom/oneplus/oimc/OIMCRule;
    .end local v11    # "startPar2":Ljava/lang/String;
    .end local v20    # "stopPar2":Ljava/lang/String;
    :cond_e
    :goto_5
    const-string v6, "MODE_EXIT"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 569
    return v9

    .line 556
    :cond_f
    :goto_6
    const-string v6, "MODE_ENTER"

    iget-object v7, v0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v1, v6, v7, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 557
    return v9
.end method

.method private ruleSubTest130x()Z
    .locals 10

    .line 1296
    const-string v0, "      ruleSubTest130x"

    .line 1297
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest130x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1301
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1305
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1306
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1307
    const/4 v3, 0x5

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    .line 1308
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1307
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1309
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1310
    const/4 v5, 0x1

    invoke-virtual {v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_5

    .line 1315
    :cond_0
    const-string v4, "131.1/131.2 MODE_TRANSITION check"

    const-string v7, "func start/stop"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1319
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1320
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1321
    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v7, "OIMCTestMode2"

    .line 1322
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1321
    invoke-direct {p0, v4, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1323
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1324
    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_4

    .line 1329
    :cond_1
    const-string v4, "132.1/132.2 MODE_ENTER check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1333
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1334
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1335
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v7, "OIMCTestMode"

    .line 1336
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1335
    invoke-direct {p0, v4, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1337
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v5, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1338
    invoke-virtual {v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_2

    goto/16 :goto_3

    .line 1343
    :cond_2
    const-string v4, "132.1/132.2 MODE_TRANSITION check"

    const-string v7, "func start/stop"

    invoke-direct {p0, v0, v4, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1348
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1349
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1350
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    const-string v8, "OIMCTestMode2"

    .line 1351
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v9, "OIMCTestMode2"

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1350
    invoke-direct {p0, v7, v6, v6, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1352
    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v7

    const-string v8, "OIMCTestMode"

    .line 1353
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v9, "OIMCTestMode"

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1352
    invoke-direct {p0, v7, v6, v6, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1354
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v7

    if-eqz v7, :cond_8

    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1355
    invoke-virtual {v7, v5, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_3

    goto/16 :goto_2

    .line 1360
    :cond_3
    const-string v7, "134.1/134.2/134.3 MODE_EXIT/MODE_ENTER"

    const-string v8, "func start"

    invoke-direct {p0, v0, v7, v8, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1364
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1365
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1366
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v7, "OIMCTestMode"

    .line 1367
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1366
    invoke-direct {p0, v3, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1368
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1369
    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_1

    .line 1374
    :cond_4
    const-string v3, "135.1/135.2 MODE_TRANSITION"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v3, v7, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1378
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1379
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1380
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1381
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v7, "OIMCTestMode"

    invoke-virtual {v4, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1380
    invoke-direct {p0, v3, v6, v6, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1382
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1383
    invoke-virtual {v3, v6, v5, v6}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    .line 1388
    :cond_5
    const-string v3, "136.1/136.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1390
    return v5

    .line 1384
    :cond_6
    :goto_0
    const-string v3, "136.1/136.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1385
    return v6

    .line 1370
    :cond_7
    :goto_1
    const-string v3, "135.1/135.2 MODE_TRANSITION"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1371
    return v6

    .line 1356
    :cond_8
    :goto_2
    const-string v3, "134.1/134.2/134.3 MODE_EXIT/MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1357
    return v6

    .line 1339
    :cond_9
    :goto_3
    const-string v3, "133.1/133.2 MODE_TRANSITION check"

    const-string v4, "func start/stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1340
    return v6

    .line 1325
    :cond_a
    :goto_4
    const-string v3, "132.1/132.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1326
    return v6

    .line 1311
    :cond_b
    :goto_5
    const-string v3, "131.1/131.2 MODE_TRANSITION check"

    const-string v4, "func start/stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1312
    return v6
.end method

.method private ruleSubTest140x()Z
    .locals 9

    .line 1412
    const-string v0, "      ruleSubTest140x"

    .line 1413
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest140x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1419
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1420
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v3, "OIMCTestMode2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1421
    const/16 v3, 0x65

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1424
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

    .line 1421
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1426
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1427
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1428
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1431
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

    .line 1428
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1433
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1434
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1435
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 1438
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

    .line 1435
    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1442
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1443
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1444
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1445
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1446
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1445
    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1447
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1448
    invoke-virtual {v3, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1449
    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_3

    .line 1454
    :cond_0
    const-string v3, "141.4/141.5 MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1458
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1459
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1460
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1461
    const/4 v3, 0x3

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 1462
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1461
    invoke-direct {p0, v4, v7, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1463
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1464
    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1465
    invoke-virtual {v4, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_2

    .line 1470
    :cond_1
    const-string v4, "142.1/142.2 MODE_SWITCH"

    const-string v5, "func start"

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1474
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1475
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1476
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1477
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1478
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode2"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1477
    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1479
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1480
    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1481
    invoke-virtual {v3, v7, v6, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_1

    .line 1486
    :cond_2
    const-string v3, "143.1/143.2 MODE_SWITCH"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1490
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1491
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1492
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1493
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 1494
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1493
    invoke-direct {p0, v3, v7, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1495
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    .line 1496
    invoke-virtual {v3, v7, v6, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1497
    invoke-virtual {v3, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    .line 1502
    :cond_3
    const-string v3, "144.1/144.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1507
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1508
    const-string v3, "OIMCTestMode2"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1509
    const/16 v3, 0x66

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1512
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

    .line 1509
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1514
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1515
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1516
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1519
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

    .line 1516
    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1521
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1522
    const-string v4, "OIMCTestMode2"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1523
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 1526
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

    .line 1523
    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1528
    return v6

    .line 1498
    :cond_4
    :goto_0
    const-string v3, "144.1/144.2 MODE_EXIT"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1499
    return v7

    .line 1482
    :cond_5
    :goto_1
    const-string v3, "143.1/143.2 MODE_SWITCH"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1483
    return v7

    .line 1466
    :cond_6
    :goto_2
    const-string v3, "142.1/142.2 MODE_SWITCH"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1467
    return v7

    .line 1450
    :cond_7
    :goto_3
    const-string v3, "141.4/141.5 MODE_ENTER"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1451
    return v7
.end method

.method private ruleSubTest20x()Z
    .locals 8

    .line 810
    const-string v0, "      ruleSubTest20x"

    .line 811
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest20x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 814
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 815
    iget-object v2, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v2}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 817
    const/4 v2, 0x1

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 818
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "OIMCTestMode"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 817
    const/4 v5, 0x0

    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 819
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 820
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_0

    goto/16 :goto_7

    .line 825
    :cond_0
    const-string v3, "20.3 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 827
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 828
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 830
    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 831
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 830
    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 832
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 833
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_1

    goto/16 :goto_6

    .line 838
    :cond_1
    const-string v3, "20.4 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 840
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 841
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 843
    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode2"

    .line 844
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode2"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 843
    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 845
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 846
    invoke-virtual {v3, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 851
    :cond_2
    const-string v3, "20.5 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 853
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 854
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 856
    const/4 v3, 0x2

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 857
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 856
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 858
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 859
    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_3

    goto/16 :goto_4

    .line 864
    :cond_3
    const-string v4, "20.6 MODE_EXIT check"

    const-string v6, "funcs stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 867
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 868
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 869
    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 870
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 869
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 871
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 872
    invoke-virtual {v4, v2, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_4

    goto/16 :goto_3

    .line 877
    :cond_4
    const-string v4, "20.7 MODE_ENTER check"

    const-string v6, "funcs start"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 880
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 881
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 882
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode2"

    .line 883
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 882
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 884
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 885
    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_5

    goto/16 :goto_2

    .line 890
    :cond_5
    const-string v4, "20.8 MODE_EXIT check"

    const-string v6, "func stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 893
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 894
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 895
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v6, "OIMCTestMode"

    .line 896
    invoke-virtual {v1, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    const-string v7, "OIMCTestMode"

    invoke-virtual {v6, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v6

    .line 895
    invoke-direct {p0, v4, v5, v5, v6}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 897
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v2, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_9

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 898
    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_6

    goto :goto_1

    .line 903
    :cond_6
    const-string v4, "20.9 MODE_EXIT check"

    const-string v6, "func stop"

    invoke-direct {p0, v0, v4, v6, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 906
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 907
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 908
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v4, "OIMCTestMode"

    .line 909
    invoke-virtual {v1, v4}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v6, "OIMCTestMode"

    invoke-virtual {v4, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 908
    invoke-direct {p0, v3, v5, v5, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 910
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 911
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    .line 916
    :cond_7
    const-string v3, "20.10 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v2}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 917
    return v2

    .line 912
    :cond_8
    :goto_0
    const-string v2, "20.10 MODE_EXIT check"

    const-string v3, "func no act"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 913
    return v5

    .line 899
    :cond_9
    :goto_1
    const-string v2, "20.9 MODE_EXIT check"

    const-string v3, "func stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 900
    return v5

    .line 886
    :cond_a
    :goto_2
    const-string v2, "20.8 MODE_EXIT check"

    const-string v3, "func stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 887
    return v5

    .line 873
    :cond_b
    :goto_3
    const-string v2, "20.7 MODE_ENTER check"

    const-string v3, "funcs start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 874
    return v5

    .line 860
    :cond_c
    :goto_4
    const-string v2, "20.6 MODE_EXIT check"

    const-string v3, "funcs stop"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 861
    return v5

    .line 847
    :cond_d
    :goto_5
    const-string v2, "20.5 MODE_ENTER check"

    const-string v3, "func start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 848
    return v5

    .line 834
    :cond_e
    :goto_6
    const-string v2, "20.4 MODE_ENTER check"

    const-string v3, "func no act"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 835
    return v5

    .line 821
    :cond_f
    :goto_7
    const-string v2, "20.3 MODE_ENTER check"

    const-string v3, "func start"

    invoke-direct {p0, v0, v2, v3, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 822
    return v5
.end method

.method private ruleSubTest40x()Z
    .locals 13

    .line 944
    const-string v0, "      ruleSubTest40x"

    .line 945
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest40x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 948
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 953
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 954
    const/4 v3, 0x4

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    .line 957
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 954
    const/4 v6, 0x2

    const/4 v7, 0x3

    invoke-direct {p0, v4, v6, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 958
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 959
    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_0

    goto/16 :goto_9

    .line 964
    :cond_0
    const-string v4, "41.1/41.2 MODE_CONFIG check"

    const-string v8, "func no act"

    const/4 v9, 0x1

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 968
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 969
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 970
    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v8, "OIMCTestMode3"

    .line 971
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 970
    invoke-direct {p0, v4, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 972
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 973
    invoke-virtual {v4, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    goto/16 :goto_8

    .line 978
    :cond_1
    const-string v4, "42.1/42.2 MODE_ENTER check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v4, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 982
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 983
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 984
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 985
    const-string v4, "OIMCTestMode3"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 986
    const/16 v4, 0x65

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    .line 989
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

    .line 986
    invoke-direct {p0, v8, v9, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 990
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_11

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 991
    invoke-virtual {v8, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_2

    goto/16 :goto_7

    .line 996
    :cond_2
    const-string v8, "42.3/42.4 RULE_ADD check"

    const-string v10, "func start"

    invoke-direct {p0, v0, v8, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1000
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1001
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1002
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1003
    const-string v8, "OIMCTestMode3"

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    const/16 v8, 0x66

    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 1007
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

    .line 1004
    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1008
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1009
    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_3

    goto/16 :goto_6

    .line 1014
    :cond_3
    const-string v10, "43.1/43.2 RULE_REMOVE check"

    const-string v11, "func stop"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1018
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1019
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1020
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1021
    const-string v10, "OIMCTestMode3"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1022
    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1023
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 1026
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

    .line 1023
    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1027
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1028
    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_4

    goto/16 :goto_5

    .line 1033
    :cond_4
    const-string v10, "43.3/43.4 RULE_ADD check"

    const-string v11, "func start"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1037
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1038
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1039
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1040
    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1041
    const-string v10, "OIMCTestMode3"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1042
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v10

    .line 1045
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

    .line 1042
    invoke-direct {p0, v10, v9, v7, v11}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1046
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v10

    if-eqz v10, :cond_e

    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1047
    invoke-virtual {v10, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v10

    if-nez v10, :cond_5

    goto/16 :goto_4

    .line 1052
    :cond_5
    const-string v10, "43.5/43.6 RULE_ADD check"

    const-string v11, "func stop"

    invoke-direct {p0, v0, v10, v11, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1056
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1057
    iget-object v10, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v10}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1058
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1059
    const-string v10, "OIMCTestMode"

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-static {v8}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    .line 1063
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

    .line 1060
    invoke-direct {p0, v8, v6, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1064
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8, v9, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1065
    invoke-virtual {v8, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_6

    goto/16 :goto_3

    .line 1070
    :cond_6
    const-string v8, "44.1/44.2 RULE_REMOVE check"

    const-string v10, "func start"

    invoke-direct {p0, v0, v8, v10, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1074
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1075
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1076
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode"

    .line 1079
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1076
    invoke-direct {p0, v3, v9, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1080
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1081
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_7

    goto/16 :goto_2

    .line 1086
    :cond_7
    const-string v3, "45.1/45.2 MODE_CONFIG check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1090
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1091
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1092
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode3"

    .line 1093
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode3"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1092
    invoke-direct {p0, v3, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1094
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1095
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_1

    .line 1100
    :cond_8
    const-string v3, "46.1/46.2 MODE_EXIT check"

    const-string v8, "func no act"

    invoke-direct {p0, v0, v3, v8, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1104
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 1105
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->syncStatus()V

    .line 1106
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    const-string v8, "OIMCTestMode"

    .line 1107
    invoke-virtual {v1, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 1106
    invoke-direct {p0, v3, v5, v5, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1108
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3, v5, v9, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc2:Lcom/oneplus/server/OIMCTest$testOneshotFunc2;

    .line 1109
    invoke-virtual {v3, v5, v5, v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc2;->checkStatus(III)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    .line 1114
    :cond_9
    const-string v3, "47.1/47.2 MODE_EXIT check"

    const-string v5, "func stop"

    invoke-direct {p0, v0, v3, v5, v9}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1117
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1118
    const-string v3, "OIMCTestMode"

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1119
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v3

    .line 1122
    invoke-virtual {v1, v2}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    const-string v5, "TestOneshotFunc"

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v4

    .line 1119
    invoke-direct {p0, v3, v6, v7, v4}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1123
    return v9

    .line 1110
    :cond_a
    :goto_0
    const-string v3, "47.1/47.2 MODE_EXIT check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1111
    return v5

    .line 1096
    :cond_b
    :goto_1
    const-string v3, "46.1/46.2 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1097
    return v5

    .line 1082
    :cond_c
    :goto_2
    const-string v3, "45.1/45.2 MODE_CONFIG check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1083
    return v5

    .line 1066
    :cond_d
    :goto_3
    const-string v3, "44.1/44.2 RULE_REMOVE check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1067
    return v5

    .line 1048
    :cond_e
    :goto_4
    const-string v3, "43.5/43.6 RULE_ADD check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1049
    return v5

    .line 1029
    :cond_f
    :goto_5
    const-string v3, "43.3/43.4 RULE_ADD check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1030
    return v5

    .line 1010
    :cond_10
    :goto_6
    const-string v3, "43.1/43.2 RULE_REMOVE check"

    const-string v4, "func stop"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1011
    return v5

    .line 992
    :cond_11
    :goto_7
    const-string v3, "42.3/42.4 RULE_ADD check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 993
    return v5

    .line 974
    :cond_12
    :goto_8
    const-string v3, "42.1/42.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 975
    return v5

    .line 960
    :cond_13
    :goto_9
    const-string v3, "41.1/41.2 MODE_CONFIG check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v5}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 961
    return v5
.end method

.method private ruleSubTest70x()Z
    .locals 9

    .line 1150
    const-string v0, "      ruleSubTest70x"

    .line 1151
    .local v0, "prefix":Ljava/lang/String;
    const-string v1, "OIMCTest"

    const-string v2, "    ================== Starting ruleSubTest70x ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 1154
    .local v1, "arg":Lcom/oneplus/server/MsgObjectArg;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1158
    .local v2, "mNames":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1159
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode"

    .line 1160
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v6, "OIMCTestMode"

    invoke-virtual {v5, v6}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1159
    const/4 v6, 0x0

    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1161
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1162
    const-string v3, "71.1/71.2 MODE_ENTER check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1163
    return v6

    .line 1166
    :cond_0
    const-string v4, "71.1/71.2 MODE_ENTER check"

    const-string v5, "func no act"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1170
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1171
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 1172
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1171
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1173
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1174
    const-string v3, "71.3/71.4 MODE_ENTER check"

    const-string v4, "func no start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1175
    return v6

    .line 1178
    :cond_1
    const-string v4, "71.3/71.4 MODE_ENTER check"

    const-string v5, "func no start"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1183
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1184
    const-string v4, "OIMCTestMode3"

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    const/16 v4, 0x65

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 1188
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

    .line 1185
    invoke-direct {p0, v4, v3, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1189
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1190
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode3"

    .line 1191
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode3"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1190
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1192
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1193
    const-string v3, "72.1/72.2/72.3 MODE_ENTER check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1194
    return v6

    .line 1197
    :cond_2
    const-string v4, "72.1/72.2/72.3 MODE_ENTER check"

    const-string v5, "func start"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1201
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1202
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    .line 1203
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1202
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1204
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1205
    const-string v3, "72.4/72.5 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1206
    return v6

    .line 1209
    :cond_3
    const-string v5, "72.4/72.5 MODE_EXIT check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1213
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1214
    invoke-static {v3}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    .line 1215
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1214
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1216
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v3, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1217
    const-string v3, "73.1/73.2 MODE_EXIT check"

    const-string v4, "func start"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1218
    return v6

    .line 1221
    :cond_4
    const-string v5, "73.1/73.2 MODE_EXIT check"

    const-string v7, "func start"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1225
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1226
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode3"

    .line 1227
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode3"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1226
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1228
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_5

    .line 1229
    const-string v3, "74.1/74.2 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1230
    return v6

    .line 1233
    :cond_5
    const-string v5, "74.1/74.2 MODE_EXIT check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v5, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1238
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1239
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v7, "OIMCTestMode"

    .line 1240
    invoke-virtual {v1, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    const-string v8, "OIMCTestMode"

    invoke-virtual {v7, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v7

    .line 1239
    invoke-direct {p0, v5, v6, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1241
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 1242
    invoke-virtual {v1, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v7, "OIMCTestMode2"

    invoke-virtual {v5, v7}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 1241
    invoke-direct {p0, v4, v6, v6, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1243
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_6

    .line 1244
    const-string v3, "75.1/75.2/75.3 MODE_EXIT check"

    const-string v4, "func no act"

    invoke-direct {p0, v0, v3, v4, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1245
    return v6

    .line 1248
    :cond_6
    const-string v4, "75.1/75.2/75.3 MODE_EXIT check"

    const-string v5, "func no act"

    invoke-direct {p0, v0, v4, v5, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1252
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 1253
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v4

    .line 1254
    .local v4, "pCount":I
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1255
    const-string v5, "OIMCTestMode3"

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1256
    const/16 v5, 0x66

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 1259
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

    .line 1256
    invoke-direct {p0, v5, v3, v6, v7}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 1260
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->getRuleCount()I

    move-result v5

    .line 1261
    .local v5, "cCount":I
    add-int/lit8 v7, v5, 0x1

    if-eq v4, v7, :cond_7

    .line 1262
    const-string v3, "76.1/76.2 RULE_REMOVE check"

    const-string/jumbo v7, "rule removed"

    invoke-direct {p0, v0, v3, v7, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1263
    return v6

    .line 1266
    :cond_7
    const-string v7, "76.1/76.2 RULE_REMOVE check"

    const-string/jumbo v8, "rule removed"

    invoke-direct {p0, v0, v7, v8, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1268
    iget-object v7, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v7, v6, v6, v6}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v7

    if-nez v7, :cond_8

    .line 1269
    const-string v3, "76.1/76.2 RULE_REMOVE check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v3, v7, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1270
    return v6

    .line 1273
    :cond_8
    const-string v6, "76.1/76.2 RULE_REMOVE check"

    const-string v7, "func no act"

    invoke-direct {p0, v0, v6, v7, v3}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1275
    return v3
.end method

.method private runRuleTest()Z
    .locals 13

    .line 663
    const-string v0, "OIMCTest"

    const-string v1, "  ================== Starting runRuleTest ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string v0, "    runRuleTest"

    .line 665
    .local v0, "prefix":Ljava/lang/String;
    const/16 v1, 0x55

    .line 667
    .local v1, "rinfo":I
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 669
    .local v2, "arg":Lcom/oneplus/server/MsgObjectArg;
    iget-object v3, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v3}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->syncStatus()V

    .line 670
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

    .line 671
    .local v3, "rule":Lcom/oneplus/oimc/OIMCRule;
    const/16 v4, 0xd9

    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 674
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 671
    const/4 v9, 0x3

    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 675
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_0

    .line 676
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 677
    return v7

    .line 680
    :cond_0
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v8, "OIMCTestMode"

    .line 681
    invoke-virtual {v2, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 680
    invoke-direct {p0, v5, v7, v7, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 682
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_1

    .line 683
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 684
    return v7

    .line 688
    :cond_1
    const-string v5, "RUN_RULE_FOR_ALL"

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testOSFunc:Lcom/oneplus/server/OIMCTest$testOneshotFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testOneshotFunc;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v0, v5, v8, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 690
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 691
    new-instance v5, Lcom/oneplus/oimc/OIMCRule;

    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v10, "OIMCTestMode"

    filled-new-array {v10}, [Ljava/lang/String;

    move-result-object v10

    invoke-direct {v5, v8, v6, v10, v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    move-object v3, v5

    .line 692
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 695
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 692
    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 696
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_2

    .line 697
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 698
    return v7

    .line 701
    :cond_2
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 702
    invoke-static {v6}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    const-string v8, "OIMCTestMode2"

    .line 703
    invoke-virtual {v2, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    const-string v10, "OIMCTestMode2"

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 702
    invoke-direct {p0, v5, v7, v7, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 704
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_3

    .line 705
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 706
    return v7

    .line 709
    :cond_3
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 710
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

    .line 711
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v5

    .line 714
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 711
    invoke-direct {p0, v5, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 715
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5, v6, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v5

    if-nez v5, :cond_4

    .line 716
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 717
    return v7

    .line 720
    :cond_4
    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 721
    const/4 v5, 0x2

    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v8

    const-string v10, "OIMCTestMode"

    .line 722
    invoke-virtual {v2, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    const-string v11, "OIMCTestMode"

    invoke-virtual {v10, v11}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v10

    .line 721
    invoke-direct {p0, v8, v7, v7, v10}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 723
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v8

    if-nez v8, :cond_5

    .line 724
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 725
    return v7

    .line 728
    :cond_5
    iget-object v8, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v8}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->syncStatus()V

    .line 729
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

    .line 730
    invoke-static {v4}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    .line 733
    invoke-virtual {v2, v3}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v8

    .line 730
    invoke-direct {p0, v4, v7, v9, v8}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 734
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_6

    .line 735
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 736
    return v7

    .line 739
    :cond_6
    invoke-static {v5}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v4

    const-string v5, "OIMCTestMode2"

    .line 740
    invoke-virtual {v2, v5}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    const-string v8, "OIMCTestMode2"

    invoke-virtual {v5, v8}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v5

    .line 739
    invoke-direct {p0, v4, v7, v7, v5}, Lcom/oneplus/server/OIMCTest;->sendMessageSynced(IIILjava/lang/Object;)V

    .line 741
    iget-object v4, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v4, v7, v7, v7}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->checkStatus(III)Z

    move-result v4

    if-nez v4, :cond_7

    .line 742
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v7}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 743
    return v7

    .line 747
    :cond_7
    const-string v4, "RUN_RULE_FOR_ALL"

    iget-object v5, p0, Lcom/oneplus/server/OIMCTest;->testReFunc:Lcom/oneplus/server/OIMCTest$testRepeatFunc;

    invoke-virtual {v5}, Lcom/oneplus/server/OIMCTest$testRepeatFunc;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v0, v4, v5, v6}, Lcom/oneplus/server/OIMCTest;->printResultInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 749
    return v6
.end method

.method private sendMessageSynced(IIILjava/lang/Object;)V
    .locals 2
    .param p1, "msgID"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 2316
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 2317
    iget-object v0, p0, Lcom/oneplus/server/OIMCTest;->oimc:Lcom/oneplus/server/OIMCService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/server/OIMCService;->flushMessage(Z)Z

    .line 2318
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "OIMCTest"

    return-object v0
.end method

.method public startTest()V
    .locals 3

    .line 2335
    monitor-enter p0

    .line 2336
    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    if-eqz v0, :cond_0

    .line 2337
    const-string v0, "OIMCTest"

    const-string v1, "Can\'t start the OIMC selt test, it is in running status"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2338
    monitor-exit p0

    return-void

    .line 2340
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/server/OIMCTest;->inTesting:Z

    .line 2341
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2403
    const-string v0, "OIMCTest"

    const-string v1, "================== Starting The OIMC Self Test ======================"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2404
    invoke-direct {p0}, Lcom/oneplus/server/OIMCTest;->enterTestMode()V

    .line 2406
    new-instance v0, Lcom/oneplus/server/OIMCTest$1TestThread;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCTest$1TestThread;-><init>(Lcom/oneplus/server/OIMCTest;)V

    .line 2407
    .local v0, "tt":Lcom/oneplus/server/OIMCTest$1TestThread;
    const-string v1, "OIMCTest"

    const-string v2, "================== Starting OIMC TestThread ======================"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2408
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCTest$1TestThread;->start()V

    .line 2410
    return-void

    .line 2341
    .end local v0    # "tt":Lcom/oneplus/server/OIMCTest$1TestThread;
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
