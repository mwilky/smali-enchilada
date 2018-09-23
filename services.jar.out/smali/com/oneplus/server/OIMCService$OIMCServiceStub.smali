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

    iput-object p1, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Lcom/oneplus/os/IOIMCService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$300(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$500(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/server/OIMCService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$1200(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

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

    return-void
.end method

.method public registerRemoteAction(Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "registerRemoteAction "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCUtil;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$1100(Lcom/oneplus/server/OIMCService;Ljava/lang/String;Lcom/oneplus/os/IOIMCRemoteAction;)V

    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1, p2}, Lcom/oneplus/server/OIMCService;->access$400(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;I)V

    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$700(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$600(Lcom/oneplus/server/OIMCService;Lcom/oneplus/oimc/OIMCRule;)V

    return-void
.end method

.method public unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCServiceStub;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v0, p1}, Lcom/oneplus/server/OIMCService;->access$1300(Lcom/oneplus/server/OIMCService;Ljava/lang/String;)V

    return-void
.end method
