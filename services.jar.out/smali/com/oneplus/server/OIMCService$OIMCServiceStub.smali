.class final Lcom/oneplus/server/OIMCService$OIMCServiceStub;
.super Lcom/oneplus/os/IOIMCService$Stub;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OIMCServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCService;

    .line 728
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Lcom/oneplus/os/IOIMCService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 761
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 763
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 740
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 742
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 791
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/OIMCService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 792
    return-void
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "fName"    # Ljava/lang/String;

    .line 781
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$1200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 3
    .param p1, "mode"    # Ljava/lang/String;
    .param p2, "change"    # I
    .param p3, "reserved"    # I

    .line 733
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 734
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V

    .line 735
    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .param p1, "in"    # Ljava/io/FileDescriptor;
    .param p2, "out"    # Ljava/io/FileDescriptor;
    .param p3, "err"    # Ljava/io/FileDescriptor;
    .param p4, "args"    # [Ljava/lang/String;
    .param p5, "callback"    # Landroid/os/ShellCallback;
    .param p6, "resultReceiver"    # Landroid/os/ResultReceiver;

    .line 796
    new-instance v0, Lcom/oneplus/server/OIMCService$Shell;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {v0, v1}, Lcom/oneplus/server/OIMCService$Shell;-><init>(Lcom/oneplus/server/OIMCService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/oneplus/server/OIMCService$Shell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    .line 797
    return-void
.end method

.method public registerRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    .locals 3
    .param p1, "fName"    # Ljava/lang/String;
    .param p2, "action"    # Lcom/oneplus/os/IOIMCRemoteAction;

    .line 774
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerRemoteAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    .line 776
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$1100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V

    .line 777
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;
    .param p2, "userId"    # I

    .line 768
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    .line 770
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 747
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 749
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3
    .param p1, "rule"    # Lcom/oneplus/oimc/OIMCRule;

    .line 754
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 755
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    .line 756
    return-void
.end method

.method public unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 3
    .param p1, "fName"    # Ljava/lang/String;

    .line 786
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$1300(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V

    .line 788
    return-void
.end method
