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
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCService;

    .line 647
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 1
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 695
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 696
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 1
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 703
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 704
    return-void
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 1
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I
    .param p3, "reserved"    # I

    .line 651
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V

    .line 652
    return-void
.end method

.method public notifyOIMCAMSReady()V
    .locals 3

    .line 718
    const-string/jumbo v0, "notifyOIMCAMSReady start register func"

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 719
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->registerOIMCFunctions(Lcom/oneplus/server/OIMCService;)V

    .line 720
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->registerOIMCRulesForBoot(Lcom/oneplus/server/OIMCService;)V

    .line 721
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, Lcom/oneplus/server/OIMCService;->access$800(Lcom/oneplus/server/OIMCService;J)V

    .line 722
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, v1, v2}, Lcom/oneplus/server/OIMCService;->access$900(Lcom/oneplus/server/OIMCService;J)V

    .line 723
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0}, Lcom/oneplus/server/OIMCService;->access$1000(Lcom/oneplus/server/OIMCService;)V

    .line 724
    return-void
.end method

.method public notifySysModeChange(Ljava/lang/String;I)V
    .locals 1
    .param p1, "switchTo"    # Ljava/lang/String;
    .param p2, "reserved"    # I

    .line 656
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V

    .line 657
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "func"    # Lcom/oneplus/oimc/IOPFunction;

    .line 661
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 662
    const/16 v1, 0xca

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 665
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 661
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 666
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 667
    return-void
.end method

.method public registerFunction(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I
    .param p3, "settingProviderKey"    # Ljava/lang/String;

    .line 671
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 672
    const/16 v1, 0xcb

    invoke-static {v1}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v1

    .line 675
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    invoke-virtual {v2, p3}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v2

    .line 671
    const/4 v3, 0x0

    invoke-virtual {v0, v1, p2, v3, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 676
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 677
    return-void
.end method

.method public registerRemoteFunction(Ljava/lang/String;I)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "launchMode"    # I

    .line 681
    new-instance v0, Lcom/oneplus/oimc/OIMCRemoteFunc;

    invoke-direct {v0}, Lcom/oneplus/oimc/OIMCRemoteFunc;-><init>()V

    .line 682
    .local v0, "func":Lcom/oneplus/oimc/IOPFunction;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    .line 683
    const/16 v2, 0xca

    invoke-static {v2}, Lcom/oneplus/server/OIMCMessage;->composeMsg(I)I

    move-result v2

    .line 686
    invoke-static {}, Lcom/oneplus/server/MsgObjectArg;->obtain()Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oneplus/server/MsgObjectArg;->setArg1(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/oneplus/server/MsgObjectArg;->setArg2(Ljava/lang/Object;)Lcom/oneplus/server/MsgObjectArg;

    move-result-object v3

    .line 682
    const/4 v4, 0x0

    invoke-virtual {v1, v2, p2, v4, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 687
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v2, v2, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 688
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 1
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 699
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 700
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 1
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 711
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 712
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 1
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 707
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 708
    return-void
.end method

.method public shutdown()V
    .locals 0

    .line 715
    return-void
.end method

.method public updateOnlineConfig()V
    .locals 1

    .line 691
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$LocalService;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->forceUpdateOnlineConfigImmediately()V

    .line 692
    return-void
.end method
