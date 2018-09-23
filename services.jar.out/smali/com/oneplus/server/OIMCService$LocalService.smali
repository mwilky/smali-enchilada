.class public Lcom/oneplus/server/OIMCService$LocalService;
.super Ljava/lang/Object;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V

    return-void
.end method

.method public notifyOIMCAMSReady()V
    .locals 3

    const-string/jumbo v0, "notifyOIMCAMSReady start register func"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->registerOIMCFunctions(Lcom/oneplus/server/OIMCService;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->registerOIMCRulesForBoot(Lcom/oneplus/server/OIMCService;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/server/OIMCService;->access$800(Lcom/oneplus/server/OIMCService;J)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, v1, v2}, Lcom/oneplus/server/OIMCService;->access$900(Lcom/oneplus/server/OIMCService;J)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCService;->access$1000(Lcom/oneplus/server/OIMCService;)V

    return-void
.end method

.method public notifySysModeChange(Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V

    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xca

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xcb

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public registerRemoteFunction(Ljava/lang/String;I)V
    .locals 5

    new-instance v0, Lcom/oneplus/oimc/OIMCRemoteFunc;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRemoteFunc;-><init>()V

    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xca

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v2

    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v2, v2, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method public shutdown()V
    .locals 0

    return-void
.end method

.method public updateOnlineConfig()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->forceUpdateOnlineConfigImmediately()V

    return-void
.end method
