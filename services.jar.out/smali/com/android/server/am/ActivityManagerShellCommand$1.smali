.class Lcom/android/server/am/ActivityManagerShellCommand$1;
.super Ljava/lang/Object;
.source "ActivityManagerShellCommand.java"

# interfaces
.implements Landroid/content/Intent$CommandOptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/ActivityManagerShellCommand;->makeIntent(I)Landroid/content/Intent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerShellCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleOption(Ljava/lang/String;Landroid/os/ShellCommand;)Z
    .locals 4

    const-string v0, "-D"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    :cond_0
    const-string v0, "-N"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/16 v2, 0x8

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    :cond_1
    const-string v0, "-W"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$102(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    :cond_2
    const-string v0, "-P"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    :cond_3
    const-string v0, "--start-profiler"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->access$202(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$302(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    :cond_4
    const-string v0, "--sampling"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    :cond_5
    const-string v0, "--streaming"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$502(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    :cond_6
    const-string v0, "--attach-agent"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Multiple --attach-agent(-bind) not supported"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v3, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    :cond_8
    const-string v0, "--attach-agent-bind"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerShellCommand;->access$600(Lcom/android/server/am/ActivityManagerShellCommand;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p2}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Multiple --attach-agent(-bind) not supported"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$602(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "-R"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$802(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    :cond_b
    const-string v0, "-S"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$902(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "--track-allocation"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    const/4 v2, 0x4

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$076(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    :cond_d
    const-string v0, "--user"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1002(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto/16 :goto_0

    :cond_e
    const-string v0, "--receiver-permission"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1102(Lcom/android/server/am/ActivityManagerShellCommand;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    :cond_f
    const-string v0, "--display"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1202(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    :cond_10
    const-string v0, "--windowingMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1302(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    :cond_11
    const-string v0, "--activityType"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1402(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    :cond_12
    const-string v0, "--task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1502(Lcom/android/server/am/ActivityManagerShellCommand;I)I

    goto :goto_0

    :cond_13
    const-string v0, "--task-overlay"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1602(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    goto :goto_0

    :cond_14
    const-string v0, "--lock-task"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/server/am/ActivityManagerShellCommand$1;->this$0:Lcom/android/server/am/ActivityManagerShellCommand;

    invoke-static {v0, v1}, Lcom/android/server/am/ActivityManagerShellCommand;->access$1702(Lcom/android/server/am/ActivityManagerShellCommand;Z)Z

    :goto_0
    return v1

    :cond_15
    return v2
.end method
