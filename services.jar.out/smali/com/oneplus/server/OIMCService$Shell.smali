.class Lcom/oneplus/server/OIMCService$Shell;
.super Landroid/os/ShellCommand;
.source "OIMCService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;

.field userId:I


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/server/OIMCService$Shell;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/OIMCService$Shell;->userId:I

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OIMCService$Shell;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/server/OIMCService;->onShellCommand(Lcom/oneplus/server/OIMCService$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/server/OIMCService;->dumpHelp(Ljava/io/PrintWriter;)V

    return-void
.end method
