.class final Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;
.super Lcom/oneplus/display/IColorBalanceManager$Stub;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method private constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    .line 3585
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0}, Lcom/oneplus/display/IColorBalanceManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/oneplus/display/ColorBalanceService;
    .param p2, "x1"    # Lcom/android/server/oneplus/display/ColorBalanceService$1;

    .line 3585
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    return-void
.end method


# virtual methods
.method public ColorBalance2GrayColor()V
    .locals 1

    .line 3640
    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->sendMsg(I)V

    .line 3641
    return-void
.end method

.method public DisableColor(I)V
    .locals 2
    .param p1, "enable"    # I

    .line 3648
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3649
    return-void
.end method

.method public GrayColor2ColorBalance()V
    .locals 1

    .line 3644
    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->sendMsg(I)V

    .line 3645
    return-void
.end method

.method public autoModeonStart()V
    .locals 2

    .line 3632
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5100(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3633
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5100(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    goto :goto_0

    .line 3635
    :cond_0
    const-string v0, "ColorBalanceService"

    const-string v1, "autoModeonStart mAutoMode is NULL"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3637
    :goto_0
    return-void
.end method

.method public getIsAutoTime()Z
    .locals 1

    .line 3628
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getAutoTime()Z

    move-result v0

    return v0
.end method

.method public sendMsg(I)V
    .locals 3
    .param p1, "v"    # I

    .line 3588
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3589
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3590
    return-void
.end method

.method public setActiveMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 3593
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3594
    return-void
.end method

.method public setColorBalance(I)V
    .locals 3
    .param p1, "value"    # I

    .line 3602
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3603
    const/16 v0, -0x200

    if-ne p1, v0, :cond_0

    .line 3604
    return-void

    .line 3605
    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3606
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 3607
    const/16 v0, 0x200

    if-gt p1, v0, :cond_1

    if-ne p1, v0, :cond_3

    .line 3608
    :cond_1
    add-int/lit16 p1, p1, -0x200

    goto :goto_0

    .line 3611
    :cond_2
    add-int/lit8 p1, p1, -0x1a

    .line 3614
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$5004(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    .line 3615
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3616
    return-void
.end method

.method public setColorBalanceActivated(I)V
    .locals 2
    .param p1, "activated"    # I

    .line 3624
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x13

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3625
    return-void
.end method

.method public setDefaultMode(I)V
    .locals 2
    .param p1, "mode"    # I

    .line 3597
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/4 v1, 0x6

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3598
    return-void
.end method

.method public setGrayColorActivated(I)V
    .locals 2
    .param p1, "activated"    # I

    .line 3620
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    const/16 v1, 0x12

    invoke-virtual {v0, v1, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    .line 3621
    return-void
.end method
