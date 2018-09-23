.class final Lcom/android/server/oneplus/display/ColorBalanceService$CMH;
.super Landroid/os/Handler;
.source "ColorBalanceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/display/ColorBalanceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CMH"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/display/ColorBalanceService;


# direct methods
.method public constructor <init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    new-instance v1, Lcom/oneplus/display/SDManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->Night2ReadMode()V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->Read2NightMode()V

    goto/16 :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4100(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->NightModeActivated(Z)V

    goto/16 :goto_0

    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ReadModeActivated(Z)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/16 v2, 0x1194

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    goto/16 :goto_0

    :pswitch_9
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MSG_CHECK_SRGBSEN,generation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " =? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " color:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    :cond_3
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mStableColor:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " delat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_4

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    :cond_4
    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;II)V

    goto/16 :goto_0

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4202(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget v3, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3300(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V

    goto/16 :goto_0

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_13
    const-string v0, "ColorBalanceService"

    const-string v1, "MSG_SAVE_MODE is not support"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    goto :goto_0

    :pswitch_15
    const-string v0, "ColorBalanceService"

    const-string v2, "MSG_SCREEN_OFF"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V

    goto :goto_0

    :pswitch_16
    const-string v0, "ColorBalanceService"

    const-string v1, "MSG_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V

    nop

    :cond_5
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
