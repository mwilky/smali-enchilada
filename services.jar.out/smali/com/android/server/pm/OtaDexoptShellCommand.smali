.class Lcom/android/server/pm/OtaDexoptShellCommand;
.super Landroid/os/ShellCommand;
.source "OtaDexoptShellCommand.java"


# instance fields
.field final mInterface:Landroid/content/pm/IOtaDexopt;


# direct methods
.method constructor <init>(Lcom/android/server/pm/OtaDexoptService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    return-void
.end method

.method private runOtaCleanup()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->cleanup()V

    const/4 v0, 0x0

    return v0
.end method

.method private runOtaDone()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OTA complete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "OTA incomplete."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private runOtaNext()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v1}, Landroid/content/pm/IOtaDexopt;->nextDexoptCommand()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private runOtaPrepare()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->prepare()V

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Success"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0
.end method

.method private runOtaProgress()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->getProgress()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v3, "%.2f"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/PrintWriter;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return v6
.end method

.method private runOtaStep()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/pm/OtaDexoptShellCommand;->mInterface:Landroid/content/pm/IOtaDexopt;

    invoke-interface {v0}, Landroid/content/pm/IOtaDexopt;->dexoptNextPackage()V

    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "cleanup"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v2, "step"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string/jumbo v2, "next"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_3
    const-string v2, "done"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_4
    const-string/jumbo v2, "prepare"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_5
    const-string/jumbo v2, "progress"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x5

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v1

    :goto_1
    packed-switch v2, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/OtaDexoptShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaProgress()I

    move-result v2

    return v2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaNext()I

    move-result v2

    return v2

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaStep()I

    move-result v2

    return v2

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaDone()I

    move-result v2

    return v2

    :pswitch_4
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaCleanup()I

    move-result v2

    return v2

    :pswitch_5
    invoke-direct {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->runOtaPrepare()I

    move-result v2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :goto_2
    return v2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Remote exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x3bab3dd3 -> :sswitch_5
        -0x12f9f2f9 -> :sswitch_4
        0x2f2382 -> :sswitch_3
        0x338af3 -> :sswitch_2
        0x3606cc -> :sswitch_1
        0x331156a4 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/pm/OtaDexoptShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "OTA Dexopt (ota) commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  prepare"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Prepare an OTA dexopt pass, collecting all packages."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  done"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Replies whether the OTA is complete or not."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  step"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    OTA dexopt the next package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  next"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Get parameters for OTA dexopt of the next package."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  cleanup"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Clean up internal states. Ends an OTA session."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
