.class public final Lcom/oneplus/server/OIMCService;
.super Lcom/android/server/SystemService;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/OIMCService$OIMCServiceStub;,
        Lcom/oneplus/server/OIMCService$LocalService;,
        Lcom/oneplus/server/OIMCService$Shell;,
        Lcom/oneplus/server/OIMCService$SyncRunnable;,
        Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;
    }
.end annotation


# static fields
.field private static final BOOT_APPLY_LOCAL_RULE_DELAY:I = 0xfa0

.field private static final BOOT_SYS_MODE_ENTER_DELAY:I = 0x1388

.field private static final NO_DELAY:I = 0x0

.field private static final OIMC_ONLINE_CONFIG_NAME:Ljava/lang/String; = "OIMC"

.field private static final TAG:Ljava/lang/String; = "OIMC"

.field private static final WRITE_CONFIG_DELAY:I = 0x1388


# instance fields
.field fm:Lcom/oneplus/server/FunctionManager;

.field mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

.field mCallback:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field mHandlerThread:Landroid/os/HandlerThread;

.field private mOIMCConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field mTM:Lcom/oneplus/server/TriggerManager;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

.field mm:Lcom/oneplus/server/ModeManager;

.field rm:Lcom/oneplus/server/RuleManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v0, Lcom/oneplus/server/OIMCService$3;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCService$3;-><init>(Lcom/oneplus/server/OIMCService;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    .line 85
    iput-object p1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    .line 86
    new-instance v0, Lcom/oneplus/server/ModeManager;

    invoke-direct {v0}, Lcom/oneplus/server/ModeManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mm:Lcom/oneplus/server/ModeManager;

    .line 87
    new-instance v0, Lcom/oneplus/server/FunctionManager;

    invoke-direct {v0}, Lcom/oneplus/server/FunctionManager;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->fm:Lcom/oneplus/server/FunctionManager;

    .line 88
    new-instance v0, Lcom/oneplus/server/RuleManager;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mm:Lcom/oneplus/server/ModeManager;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->fm:Lcom/oneplus/server/FunctionManager;

    invoke-direct {v0, v1, v2}, Lcom/oneplus/server/RuleManager;-><init>(Lcom/oneplus/server/ModeManager;Lcom/oneplus/server/FunctionManager;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->rm:Lcom/oneplus/server/RuleManager;

    .line 89
    new-instance v0, Lcom/oneplus/server/TriggerManager;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mm:Lcom/oneplus/server/ModeManager;

    iget-object v3, p0, Lcom/oneplus/server/OIMCService;->fm:Lcom/oneplus/server/FunctionManager;

    iget-object v4, p0, Lcom/oneplus/server/OIMCService;->rm:Lcom/oneplus/server/RuleManager;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/server/TriggerManager;-><init>(Landroid/content/Context;Lcom/oneplus/server/ModeManager;Lcom/oneplus/server/FunctionManager;Lcom/oneplus/server/RuleManager;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    .line 90
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mUserManager:Landroid/os/UserManager;

    .line 91
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OIMC"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandlerThread:Landroid/os/HandlerThread;

    .line 92
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 94
    new-instance v0, Lcom/oneplus/server/OIMCService$1;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/server/OIMCService$1;-><init>(Lcom/oneplus/server/OIMCService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 107
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->initPredefinedModes()V

    .line 108
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/server/OIMCService;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;

    .line 62
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->notifyModeChangeInner(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oneplus/server/OIMCService;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;

    .line 62
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->setupReceiver()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->getFuncStatus(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->unBindRemoteAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->notifySysModeChangeInner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "x2"    # I

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # Lcom/oneplus/oimc/OIMCRule;

    .line 62
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/server/OIMCService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->initConfigTable(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/server/OIMCService;J)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/server/OIMCService;
    .param p1, "x1"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->initMode(J)V

    return-void
.end method

.method private actionConfigByCmd(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p1, "funcName"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;

    .line 416
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 417
    const/16 v1, 0x69

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 420
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/oneplus/server/MsgObjectArg;->setArg3(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 416
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 421
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    return-void
.end method

.method private addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 398
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 399
    const/16 v1, 0xd0

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 402
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 398
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 403
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 404
    return-void
.end method

.method private addFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 425
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 426
    const/16 v1, 0xd3

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 429
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 425
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 430
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 431
    return-void
.end method

.method private addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 380
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 381
    const/16 v1, 0xd5

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 384
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 380
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 385
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 386
    return-void
.end method

.method private bindRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 443
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 444
    const/16 v1, 0xd7

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 447
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 443
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 448
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 449
    return-void
.end method

.method static dumpHelp(Ljava/io/PrintWriter;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;

    .line 635
    const-string v0, "OIMC commands:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 636
    const-string v0, "  help"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 637
    const-string v0, "    Print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 638
    const-string v0, "  dump"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 639
    const-string v0, "    Print the mode, function, rules info."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    const-string v0, "  rule [add|remove] [function name] [on|off] [trigger mode ...]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 641
    const-string v0, "    adding a rule for the specified function to be on/off by trigger modes"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 642
    const-string v0, "  mode [enter|exit] [mode name]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 643
    const-string v0, "    note: this is test command during development phase, will remove soon"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 644
    const-string v0, "  config [function name] [extra string]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method private getFuncStatus(Ljava/lang/String;)I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 461
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 463
    .local v0, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/16 v1, 0x2712

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    invoke-virtual {v0, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 464
    invoke-virtual {v0}, Lcom/oneplus/server/MsgObjectArg;->getArg3()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method

.method private initConfigTable(J)V
    .locals 5
    .param p1, "delay"    # J

    .line 124
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xcc

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v3, v4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 128
    return-void
.end method

.method private initMode(J)V
    .locals 17
    .param p1, "delay"    # J

    .line 152
    const-string v0, "SystemMode"

    const/4 v1, 0x0

    invoke-static {v0, v1, v1}, Lcom/oneplus/server/MsgObjectArg;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 153
    .local v0, "arg":Lcom/oneplus/server/MsgObjectArg;
    const/4 v9, 0x1

    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object v6, v0

    move-wide/from16 v7, p1

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/server/OIMCService;->sendMessageDelayed(IIILjava/lang/Object;J)Z

    .line 155
    const-string v2, "User0"

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/oneplus/server/MsgObjectArg;->obtain(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v0

    .line 156
    invoke-static {v9}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v10, p0

    move-object v14, v0

    move-wide/from16 v15, p1

    invoke-virtual/range {v10 .. v16}, Lcom/oneplus/server/OIMCService;->sendMessageDelayed(IIILjava/lang/Object;J)Z

    .line 157
    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    .line 160
    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;

    invoke-direct {v3, p0}, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;-><init>(Lcom/oneplus/server/OIMCService;)V

    const-string v4, "OIMC"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mOIMCConfigObserver:Lcom/oneplus/config/ConfigObserver;

    .line 162
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mOIMCConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    .line 163
    return-void
.end method

.method private initPredefinedModes()V
    .locals 8

    .line 131
    sget-object v0, Lcom/oneplus/server/ModeManager;->SystemModes:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    .line 132
    .local v4, "sysMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v6, Lcom/oneplus/server/SceneMode;

    const/4 v7, 0x1

    invoke-direct {v6, v4, v7}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 131
    .end local v4    # "sysMode":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 135
    :cond_0
    sget-object v0, Lcom/oneplus/oimc/OIMCMode;->SceneModes:[Ljava/lang/String;

    array-length v1, v0

    :goto_1
    const/4 v3, 0x2

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    .line 136
    .local v4, "sceneMode":Ljava/lang/String;
    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v6, Lcom/oneplus/server/SceneMode;

    invoke-direct {v6, v4, v3}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5, v6}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 135
    .end local v4    # "sceneMode":Ljava/lang/String;
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 138
    :cond_1
    sget-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 139
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v1, Lcom/oneplus/server/SceneMode;

    const-string v2, "TestMode"

    invoke-direct {v1, v2, v3}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 141
    :cond_2
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->setupExistingUserModes()V

    .line 142
    return-void
.end method

.method private notifyModeChangeInner(Ljava/lang/String;I)V
    .locals 4
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I

    .line 353
    const-string v0, "OIMC"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notified , mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " changeTo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "msg":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    .line 356
    const/4 v0, 0x1

    goto :goto_0

    .line 357
    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    .line 358
    const/4 v0, 0x2

    .line 360
    :cond_1
    :goto_0
    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 361
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 360
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3, v3, v2}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 362
    return-void
.end method

.method private notifySysModeChangeInner(Ljava/lang/String;)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "notified , sys mode switch to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 366
    const/4 v0, 0x3

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    .line 367
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v1

    .line 366
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v2, v1}, Lcom/oneplus/server/OIMCService;->sendMessage(IIILjava/lang/Object;)Z

    .line 368
    return-void
.end method

.method private removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 407
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 408
    const/16 v1, 0xd1

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 411
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 407
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, p2, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 412
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 413
    return-void
.end method

.method private removeFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 434
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 435
    const/16 v1, 0xd4

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 438
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 434
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 439
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 440
    return-void
.end method

.method private removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 389
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 390
    const/16 v1, 0xd6

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 393
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 389
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 394
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 395
    return-void
.end method

.method private runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 4
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 371
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 372
    const/16 v1, 0xd9

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 375
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 371
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 376
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 377
    return-void
.end method

.method private scheduleSaveConfig(J)V
    .locals 4
    .param p1, "delay"    # J

    .line 523
    const/16 v0, 0xd2

    invoke-static {v0}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v0

    .line 524
    .local v0, "msgId":I
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 525
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 530
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 531
    return-void
.end method

.method private scheduleSaveConfigImmediately()V
    .locals 2

    .line 488
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/OIMCService;->scheduleSaveConfig(J)V

    .line 489
    return-void
.end method

.method private setupExistingUserModes()V
    .locals 7

    .line 145
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mUserManager:Landroid/os/UserManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v0

    .line 146
    .local v0, "userInfos":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 147
    .local v2, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v3, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    new-instance v4, Lcom/oneplus/server/SceneMode;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "User"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6}, Lcom/oneplus/server/SceneMode;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v3, v4}, Lcom/oneplus/server/TriggerManager;->registerMode(Lcom/oneplus/server/SceneMode;)Z

    .line 148
    .end local v2    # "userInfo":Landroid/content/pm/UserInfo;
    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method private setupReceiver()V
    .locals 3

    .line 176
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 177
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 178
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 180
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mUserSwitchReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 181
    return-void
.end method

.method private unBindRemoteAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 452
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 453
    const/16 v1, 0xd8

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 456
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 452
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 457
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 458
    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->addFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 469
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 476
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->addFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    .line 477
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 17
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    move-object/from16 v0, p0

    .line 332
    move-object/from16 v1, p3

    if-eqz v1, :cond_1

    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, "userId":I
    const/4 v3, 0x0

    .local v3, "i":I
    array-length v4, v1

    if-ge v3, v4, :cond_1

    .line 335
    aget-object v4, v1, v3

    .line 336
    .local v4, "arg":Ljava/lang/String;
    const-string v5, "dump"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 337
    iget-object v5, v0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    const/16 v7, 0x3f

    move-object/from16 v8, p2

    invoke-virtual {v5, v7, v6, v8}, Lcom/oneplus/server/TriggerManager;->dumpSysInfo(ILcom/oneplus/server/MsgObjectArg;Ljava/io/PrintWriter;)V

    .line 338
    return-void

    .line 340
    :cond_0
    move-object/from16 v8, p2

    new-instance v5, Lcom/oneplus/server/OIMCService$Shell;

    invoke-direct {v5, v0}, Lcom/oneplus/server/OIMCService$Shell;-><init>(Lcom/oneplus/server/OIMCService;)V

    .line 341
    .local v5, "shell":Lcom/oneplus/server/OIMCService$Shell;
    iput v2, v5, Lcom/oneplus/server/OIMCService$Shell;->userId:I

    .line 342
    array-length v7, v1

    sub-int/2addr v7, v3

    new-array v7, v7, [Ljava/lang/String;

    .line 343
    .local v7, "newArgs":[Ljava/lang/String;
    const/4 v9, 0x0

    array-length v10, v1

    sub-int/2addr v10, v3

    invoke-static {v1, v3, v7, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 344
    iget-object v10, v0, Lcom/oneplus/server/OIMCService;->mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v15, 0x0

    new-instance v14, Landroid/os/ResultReceiver;

    invoke-direct {v14, v6}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v9, v5

    move-object/from16 v12, p1

    move-object v6, v14

    move-object v14, v7

    move-object/from16 v16, v6

    invoke-virtual/range {v9 .. v16}, Lcom/oneplus/server/OIMCService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 346
    return-void

    .line 350
    .end local v2    # "userId":I
    .end local v3    # "i":I
    .end local v4    # "arg":Ljava/lang/String;
    .end local v5    # "shell":Lcom/oneplus/server/OIMCService$Shell;
    .end local v7    # "newArgs":[Ljava/lang/String;
    :cond_1
    move-object/from16 v8, p2

    return-void
.end method

.method public flushMessage()Z
    .locals 1

    .line 299
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->flushMessage(Z)Z

    move-result v0

    return v0
.end method

.method public flushMessage(Z)Z
    .locals 8
    .param p1, "testMode"    # Z

    .line 303
    new-instance v0, Lcom/oneplus/server/OIMCService$SyncRunnable;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCService$SyncRunnable;-><init>(Lcom/oneplus/server/OIMCService;)V

    .line 305
    .local v0, "sync":Lcom/oneplus/server/OIMCService$SyncRunnable;
    const/16 v1, 0x2710

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 306
    iget-object v4, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeTMsg(I)I

    move-result v1

    new-instance v6, Lcom/oneplus/server/OPFunction;

    const-string/jumbo v7, "sync"

    invoke-direct {v6, v7, v0, v2}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)V

    invoke-virtual {v5, v1, v3, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 311
    :cond_0
    iget-object v4, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    new-instance v6, Lcom/oneplus/server/OPFunction;

    const-string/jumbo v7, "sync"

    invoke-direct {v6, v7, v0, v2}, Lcom/oneplus/server/OPFunction;-><init>(Ljava/lang/String;Lcom/oneplus/oimc/IOPFunction;I)V

    invoke-virtual {v5, v1, v3, v3, v6}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 316
    :goto_0
    move v1, v2

    .line 318
    .local v1, "ret":Z
    :try_start_0
    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 319
    :goto_1
    :try_start_1
    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService$SyncRunnable;->getStatus()Z

    move-result v2

    if-nez v2, :cond_1

    .line 320
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 322
    :cond_1
    monitor-exit v0

    .line 327
    return v1

    .line 322
    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 327
    :catchall_1
    move-exception v2

    goto :goto_2

    .line 323
    :catch_0
    move-exception v2

    .line 324
    .local v2, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 325
    const/4 v1, 0x0

    .line 327
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :goto_2
    return v1
.end method

.method public forceUpdateOnlineConfigImmediately()V
    .locals 2

    .line 166
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/server/OIMCService$2;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OIMCService$2;-><init>(Lcom/oneplus/server/OIMCService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    return-void
.end method

.method public onBootPhase(I)V
    .locals 0
    .param p1, "phase"    # I

    .line 120
    return-void
.end method

.method onShellCommand(Lcom/oneplus/server/OIMCService$Shell;Ljava/lang/String;)I
    .locals 12
    .param p1, "shell"    # Lcom/oneplus/server/OIMCService$Shell;
    .param p2, "cmd"    # Ljava/lang/String;

    .line 549
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 550
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    const-string/jumbo v1, "rule"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 553
    monitor-enter p0

    .line 554
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 556
    .local v3, "token":J
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 557
    .local v1, "ruleAction":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 559
    .local v5, "funcName":Ljava/lang/String;
    :try_start_1
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->toFuncAction(Ljava/lang/String;)I

    move-result v6

    .line 560
    .local v6, "funcAction":I
    if-eqz v1, :cond_3

    if-eqz v5, :cond_3

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3

    const-string v7, "add"

    .line 561
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string/jumbo v7, "remove"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 562
    :cond_0
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 563
    .local v7, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v8

    .line 565
    .local v8, "arg":Ljava/lang/String;
    :cond_1
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    if-nez v9, :cond_1

    .line 568
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_3

    .line 569
    new-array v9, v2, [Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 570
    .local v9, "triggerModes":[Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[cmd] rule "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " for func "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " by "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 571
    const-string v10, "add"

    invoke-virtual {v10, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 572
    new-instance v10, Lcom/oneplus/oimc/OIMCRule;

    invoke-direct {v10, v5, v6, v9, v2}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/server/OIMCService;->addFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V

    goto :goto_0

    .line 574
    :cond_2
    new-instance v10, Lcom/oneplus/oimc/OIMCRule;

    invoke-direct {v10, v5, v6, v9, v2}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/server/OIMCService;->removeFuncRuleByCmd(Lcom/oneplus/oimc/OIMCRule;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 582
    .end local v6    # "funcAction":I
    .end local v7    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v8    # "arg":Ljava/lang/String;
    .end local v9    # "triggerModes":[Ljava/lang/String;
    :cond_3
    :goto_0
    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 583
    goto :goto_1

    .line 582
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 578
    :catch_0
    move-exception v6

    .line 579
    .local v6, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v7, "command error, please check help"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 580
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_0

    .line 584
    .end local v1    # "ruleAction":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "funcName":Ljava/lang/String;
    :goto_1
    :try_start_4
    monitor-exit p0

    goto/16 :goto_7

    .line 582
    .restart local v1    # "ruleAction":Ljava/lang/String;
    .restart local v3    # "token":J
    .restart local v5    # "funcName":Ljava/lang/String;
    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    .line 584
    .end local v1    # "ruleAction":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "funcName":Ljava/lang/String;
    :catchall_1
    move-exception v1

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 585
    :cond_4
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_8

    const-string/jumbo v1, "mode"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 586
    monitor-enter p0

    .line 587
    :try_start_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 588
    .restart local v3    # "token":J
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 589
    .local v1, "action":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 591
    .local v5, "mode":Ljava/lang/String;
    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    :try_start_6
    const-string v6, "enter"

    .line 592
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "exit"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 593
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[cmd] mode "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 594
    const-string v6, "enter"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 595
    const/4 v6, 0x1

    goto :goto_3

    :cond_6
    const/4 v6, 0x2

    .line 594
    :goto_3
    invoke-direct {p0, v5, v6}, Lcom/oneplus/server/OIMCService;->notifyModeChangeInner(Ljava/lang/String;I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_4

    .line 598
    :catchall_2
    move-exception v2

    :try_start_7
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_7
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 599
    nop

    .line 600
    .end local v1    # "action":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "mode":Ljava/lang/String;
    monitor-exit p0

    goto :goto_7

    :catchall_3
    move-exception v1

    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v1

    .line 601
    :cond_8
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string/jumbo v1, "test"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 602
    monitor-enter p0

    .line 603
    :try_start_8
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 605
    .restart local v3    # "token":J
    :try_start_9
    invoke-static {p0}, Lcom/oneplus/server/OIMCTest;->getInstance(Lcom/oneplus/server/OIMCService;)Lcom/oneplus/server/OIMCTest;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/server/OIMCTest;->startTest()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 607
    :try_start_a
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 608
    nop

    .line 609
    .end local v3    # "token":J
    monitor-exit p0

    goto :goto_7

    .line 607
    .restart local v3    # "token":J
    :catchall_4
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    .line 609
    .end local v3    # "token":J
    :catchall_5
    move-exception v1

    monitor-exit p0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v1

    .line 611
    :cond_9
    sget-boolean v1, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    if-eqz v1, :cond_b

    const-string v1, "config"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 612
    monitor-enter p0

    .line 613
    :try_start_b
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 614
    .restart local v3    # "token":J
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "funcName":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/oneplus/server/OIMCService$Shell;->getNextArg()Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_7

    .line 617
    .local v5, "extra":Ljava/lang/String;
    if-eqz v1, :cond_a

    if-eqz v5, :cond_a

    .line 618
    move-object v6, v5

    .line 619
    .local v6, "obj":Ljava/lang/Object;
    :try_start_c
    invoke-direct {p0, v1, v6}, Lcom/oneplus/server/OIMCService;->actionConfigByCmd(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    .line 619
    .end local v6    # "obj":Ljava/lang/Object;
    goto :goto_6

    .line 625
    :catchall_6
    move-exception v2

    goto :goto_5

    .line 621
    :catch_1
    move-exception v6

    .line 622
    .local v6, "e":Ljava/lang/Exception;
    :try_start_d
    const-string v7, "command error, please check help"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 623
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    .line 623
    .end local v6    # "e":Ljava/lang/Exception;
    goto :goto_6

    .line 625
    :goto_5
    :try_start_e
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2

    :cond_a
    :goto_6
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 626
    nop

    .line 627
    .end local v1    # "funcName":Ljava/lang/String;
    .end local v3    # "token":J
    .end local v5    # "extra":Ljava/lang/String;
    monitor-exit p0

    .line 631
    :goto_7
    return v2

    .line 627
    :catchall_7
    move-exception v1

    monitor-exit p0
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v1

    .line 629
    :cond_b
    invoke-virtual {p1, p2}, Lcom/oneplus/server/OIMCService$Shell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public onStart()V
    .locals 2

    .line 112
    new-instance v0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    invoke-direct {v0, p0}, Lcom/oneplus/server/OIMCService$OIMCServiceStub;-><init>(Lcom/oneplus/server/OIMCService;)V

    iput-object v0, p0, Lcom/oneplus/server/OIMCService;->mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    .line 113
    const-string/jumbo v0, "oimc"

    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mBinderService:Lcom/oneplus/server/OIMCService$OIMCServiceStub;

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/server/OIMCService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 114
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    new-instance v1, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-direct {v1, p0}, Lcom/oneplus/server/OIMCService$LocalService;-><init>(Lcom/oneplus/server/OIMCService;)V

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/server/OIMCService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 115
    invoke-direct {p0}, Lcom/oneplus/server/OIMCService;->initOnlineConfig()V

    .line 116
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "func"    # Lcom/oneplus/oimc/IOPFunction;

    .line 493
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 494
    const/16 v1, 0xca

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 497
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 493
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 498
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 499
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "settingProviderKey"    # Ljava/lang/String;

    .line 503
    iget-object v0, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 504
    const/16 v1, 0xcb

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 507
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 503
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 508
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 509
    return-void
.end method

.method public registerRemoteFunction(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I

    .line 513
    new-instance v0, Lcom/oneplus/oimc/OIMCRemoteFunc;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRemoteFunc;-><init>()V

    .line 514
    .local v0, "func":Lcom/oneplus/oimc/IOPFunction;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 515
    const/16 v2, 0xca

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v2

    .line 518
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 514
    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 519
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 520
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 472
    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/OIMCService;->removeFuncRuleAsUser(Lcom/oneplus/oimc/OIMCRule;I)V

    .line 473
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 480
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->removeFuncRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    .line 481
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 0
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 484
    invoke-direct {p0, p1}, Lcom/oneplus/server/OIMCService;->runRuleForAll(Lcom/oneplus/oimc/OIMCRule;)V

    .line 485
    return-void
.end method

.method public sendMessage(IIILjava/lang/Object;)Z
    .locals 3
    .param p1, "msgID"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .line 214
    invoke-static {p1}, Lcom/oneplus/server/OIMCMessage;->getMajorType(I)I

    move-result v0

    .line 215
    .local v0, "mid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v1, 0x2710

    if-gt v0, v1, :cond_0

    .line 216
    monitor-enter p0

    .line 217
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 218
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move-result v2

    monitor-exit p0

    return v2

    .line 219
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 220
    :cond_0
    const/16 v1, 0x2711

    if-ne v0, v1, :cond_1

    .line 221
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    move-object v2, p4

    check-cast v2, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/server/TriggerManager;->getSysInfo(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v1

    return v1

    .line 222
    :cond_1
    const/16 v1, 0x2712

    if-ne v0, v1, :cond_2

    .line 223
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    move-object v2, p4

    check-cast v2, Lcom/oneplus/server/MsgObjectArg;

    invoke-virtual {v1, p2, v2}, Lcom/oneplus/server/TriggerManager;->getFuncStatus(ILcom/oneplus/server/MsgObjectArg;)Z

    move-result v1

    return v1

    .line 226
    :cond_2
    const/4 v1, 0x0

    return v1
.end method

.method public sendMessageDelayed(IIILjava/lang/Object;J)Z
    .locals 3
    .param p1, "msgID"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;
    .param p5, "delayMillis"    # J

    .line 230
    invoke-static {p1}, Lcom/oneplus/server/OIMCMessage;->getMajorType(I)I

    move-result v0

    .line 231
    .local v0, "mid":I
    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    const/16 v2, 0x2710

    if-gt v0, v2, :cond_0

    .line 232
    monitor-enter p0

    .line 233
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 234
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p5, p6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v2

    monitor-exit p0

    return v2

    .line 235
    .end local v1    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 238
    :cond_0
    return v1
.end method
