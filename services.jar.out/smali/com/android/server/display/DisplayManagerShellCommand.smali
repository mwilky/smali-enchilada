.class Lcom/android/server/display/DisplayManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "DisplayManagerShellCommand.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DisplayManagerShellCommand"


# instance fields
.field private final mService:Lcom/android/server/display/DisplayManagerService$BinderService;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayManagerService$BinderService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    return-void
.end method

.method private resetBrightnessConfiguration()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService$BinderService;->resetBrightnessConfiguration()V

    const/4 v0, 0x0

    return v0
.end method

.method private setBrightness()I
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v2

    const-string v3, "Error: no brightness specified"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    const/high16 v2, -0x40800000    # -1.0f

    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v3

    :goto_0
    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-ltz v3, :cond_2

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerShellCommand;->mService:Lcom/android/server/display/DisplayManagerService$BinderService;

    float-to-int v3, v2

    mul-int/lit16 v3, v3, 0xff

    invoke-virtual {v1, v3}, Lcom/android/server/display/DisplayManagerService$BinderService;->setBrightness(I)V

    const/4 v1, 0x0

    return v1

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    move-result-object v3

    const-string v4, "Error: brightness should be a number between 0 and 1"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 4

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x59bb9cc8

    if-eq v2, v3, :cond_2

    const v3, 0x5fa7aa9c

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string/jumbo v2, "set-brightness"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    const-string/jumbo v2, "reset-brightness-configuration"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/display/DisplayManagerShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->resetBrightnessConfiguration()I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->setBrightness()I

    move-result v1

    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const-string v1, "Display manager commands:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  help"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Print this help text."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, "  set-brightness BRIGHTNESS"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Sets the current brightness to BRIGHTNESS (a number between 0 and 1)."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  reset-brightness-configuration"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "    Reset the brightness to its default configuration."

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/content/Intent;->printIntentArgsHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method
