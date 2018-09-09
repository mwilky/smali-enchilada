.class Lcom/android/server/OnePlusPowerController$Shell;
.super Landroid/os/ShellCommand;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Shell"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;

.field userId:I


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/OnePlusPowerController;

    .line 2607
    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$Shell;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2608
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusPowerController$Shell;->userId:I

    return-void
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3
    .param p1, "cmd"    # Ljava/lang/String;

    .line 2612
    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2613
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$Shell;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/OnePlusPowerController;->onShellCommand(Lcom/android/server/OnePlusPowerController$Shell;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onHelp()V
    .locals 1

    .line 2618
    invoke-virtual {p0}, Lcom/android/server/OnePlusPowerController$Shell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    .line 2619
    .local v0, "pw":Ljava/io/PrintWriter;
    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 2620
    return-void
.end method
