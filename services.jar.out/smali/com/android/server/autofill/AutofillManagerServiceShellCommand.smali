.class public final Lcom/android/server/autofill/AutofillManagerServiceShellCommand;
.super Landroid/os/ShellCommand;
.source "AutofillManagerServiceShellCommand.java"


# instance fields
.field private final mService:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    return-void
.end method

.method private getBindInstantService(Ljava/io/PrintWriter;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getAllowInstantService()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "true"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v0, "false"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getFieldClassificationScore(Ljava/io/PrintWriter;)I
    .locals 8

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string v1, "--algorithm"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    move-object v2, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    new-instance v6, Landroid/os/RemoteCallback;

    new-instance v7, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;

    invoke-direct {v7, p1, v4}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$3WCRplTGFh_xsmb8tmAG8x-Pn5A;-><init>(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    invoke-direct {v6, v7}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-virtual {v5, v1, v2, v3, v6}, Lcom/android/server/autofill/AutofillManagerService;->getScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V

    invoke-direct {p0, p1, v4}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result v5

    return v5
.end method

.method private getFullScreenMode(Ljava/io/PrintWriter;)I
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getFullScreenMode()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "default"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "true"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method private getLogLevel(Ljava/io/PrintWriter;)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getLogLevel()I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknow ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_0
    const-string/jumbo v2, "verbose"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_1
    const-string v2, "debug"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1

    :cond_2
    const-string/jumbo v2, "off"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v1
.end method

.method private getMaxPartitions(Ljava/io/PrintWriter;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getMaxPartitions()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private getMaxVisibileDatasets(Ljava/io/PrintWriter;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->getMaxVisibleDatasets()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private getUserIdFromArgsOrAllUsers()I
    .locals 2

    const-string v0, "--user"

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserHandle;->parseUserArg(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method private isNextArgSessions(Ljava/io/PrintWriter;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "sessions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "Error: invalid list type"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method static synthetic lambda$getFieldClassificationScore$0(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Landroid/os/Bundle;)V
    .locals 3

    const-string/jumbo v0, "scores"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;

    if-nez v0, :cond_0

    const-string/jumbo v1, "no score"

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/service/autofill/AutofillFieldClassificationService$Scores;->scores:[[F

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget v1, v1, v2

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(F)V

    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public static synthetic lambda$requestDestroy$1(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->destroySessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method public static synthetic lambda$requestList$2(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->listSessions(ILcom/android/internal/os/IResultReceiver;)V

    return-void
.end method

.method private requestDestroy(Ljava/io/PrintWriter;)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;

    invoke-direct {v2, p0, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$1;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v3, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$ww56nbkJspkRdVJ0yMdT4sroSiY;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result v3

    return v3
.end method

.method private requestGet(Ljava/io/PrintWriter;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "max_partitions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "max_visible_datasets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_3
    const-string v1, "full_screen_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "log_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v1, "fc_score"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid set: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getBindInstantService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getFullScreenMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getFieldClassificationScore(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getMaxVisibileDatasets(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getMaxPartitions(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getLogLevel(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e9f9370 -> :sswitch_5
        -0x779ee137 -> :sswitch_4
        -0x4d6a481a -> :sswitch_3
        0x30420514 -> :sswitch_2
        0x53092da3 -> :sswitch_1
        0x69a17484 -> :sswitch_0
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

.method private requestList(Ljava/io/PrintWriter;)I
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->isNextArgSessions(Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getUserIdFromArgsOrAllUsers()I

    move-result v0

    new-instance v1, Ljava/util/concurrent/CountDownLatch;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v2, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand$2;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)V

    new-instance v3, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$WrWpLlZPawytZji8-6Dx9_p70Dw;

    invoke-direct {v3, p0, v0, v2}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerServiceShellCommand$WrWpLlZPawytZji8-6Dx9_p70Dw;-><init>(Lcom/android/server/autofill/AutofillManagerServiceShellCommand;ILcom/android/internal/os/IResultReceiver;)V

    invoke-direct {p0, p1, v1, v3}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I

    move-result v3

    return v3
.end method

.method private requestReset()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0}, Lcom/android/server/autofill/AutofillManagerService;->reset()V

    const/4 v0, 0x0

    return v0
.end method

.method private requestSessionCommon(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;Ljava/lang/Runnable;)I
    .locals 1

    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I

    move-result v0

    return v0
.end method

.method private requestSet(Ljava/io/PrintWriter;)I
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "max_partitions"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_1
    const-string/jumbo v1, "max_visible_datasets"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    const-string v1, "bind-instant-service-allowed"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_3
    const-string v1, "full_screen_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v1, "log_level"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid set: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setBindInstantService(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setFullScreenMode(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setMaxVisibileDatasets()I

    move-result v1

    return v1

    :pswitch_3
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setMaxPartitions()I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->setLogLevel(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x779ee137 -> :sswitch_4
        -0x4d6a481a -> :sswitch_3
        0x30420514 -> :sswitch_2
        0x53092da3 -> :sswitch_1
        0x69a17484 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setBindInstantService(Ljava/io/PrintWriter;)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x36758e

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_1

    const v3, 0x5cb1923

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v4

    goto :goto_1

    :cond_1
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v5

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/AutofillManagerService;->setAllowInstantService(Z)V

    return v6

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v4}, Lcom/android/server/autofill/AutofillManagerService;->setAllowInstantService(Z)V

    return v6

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setFullScreenMode(Ljava/io/PrintWriter;)I
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x36758e

    const/4 v4, -0x1

    const/4 v5, 0x0

    if-eq v2, v3, :cond_2

    const v3, 0x5cb1923

    if-eq v2, v3, :cond_1

    const v3, 0x5c13d641

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "default"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    goto :goto_1

    :cond_1
    const-string v2, "false"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v5

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v4

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v4

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    return v5

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    return v5

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setFullScreenMode(Ljava/lang/Boolean;)V

    return v5

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setLogLevel(Ljava/io/PrintWriter;)I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x1ad6f

    const/4 v4, 0x2

    const/4 v5, -0x1

    const/4 v6, 0x0

    if-eq v2, v3, :cond_2

    const v3, 0x5b09653

    if-eq v2, v3, :cond_1

    const v3, 0x14ed7982

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "verbose"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v6

    goto :goto_1

    :cond_1
    const-string v2, "debug"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "off"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v5

    :goto_1
    packed-switch v1, :pswitch_data_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid level: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v5

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v6}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    return v6

    :pswitch_1
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v1, v4}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    return v6

    :pswitch_2
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevel(I)V

    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setMaxPartitions()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitions(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private setMaxVisibileDatasets()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->mService:Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasets(I)V

    const/4 v0, 0x0

    return v0
.end method

.method private waitForLatch(Ljava/io/PrintWriter;Ljava/util/concurrent/CountDownLatch;)I
    .locals 4

    const-wide/16 v0, 0x5

    const/4 v2, -0x1

    :try_start_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, v0, v1, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "Timed out after 5 seconds"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :cond_0
    nop

    const/4 v0, 0x0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "System call interrupted"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    return v2
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 3

    if-nez p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "destroy"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_1
    const-string/jumbo v2, "reset"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v2, "list"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_3
    const-string/jumbo v2, "set"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v2, "get"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x3

    :cond_1
    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v1

    return v1

    :pswitch_0
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestSet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_1
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestGet(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_2
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestReset()I

    move-result v1

    return v1

    :pswitch_3
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestDestroy(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    :pswitch_4
    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->requestList(Ljava/io/PrintWriter;)I

    move-result v1

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x18f56 -> :sswitch_4
        0x1bc62 -> :sswitch_3
        0x32b09e -> :sswitch_2
        0x6761d4f -> :sswitch_1
        0x5cd39ffa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onHelp()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "AutoFill Service (autofill) commands:"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  help"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Prints this help text."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get log_level "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Gets the Autofill log level (off | debug | verbose)."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get max_partitions"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Gets the maximum number of partitions per session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get max_visible_datasets"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Gets the maximum number of visible datasets in the UI."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get full_screen_mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Gets the Fill UI full screen mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get fc_score [--algorithm ALGORITHM] value1 value2"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Gets the field classification score for 2 fields."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  get bind-instant-service-allowed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Gets whether binding to services provided by instant apps is allowed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set log_level [off | debug | verbose]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the Autofill log level."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set max_partitions number"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the maximum number of partitions per session."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set max_visible_datasets number"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the maximum number of visible datasets in the UI."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set full_screen_mode [true | false | default]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets the Fill UI full screen mode"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  set bind-instant-service-allowed [true | false]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Sets whether binding to services provided by instant apps is allowed"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  list sessions [--user USER_ID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Lists all pending sessions."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  destroy sessions [--user USER_ID]"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Destroys all pending sessions."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "  reset"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, "    Resets all pending sessions and cached service connections."

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v0, :cond_2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    :cond_2
    :goto_1
    throw v2
.end method
