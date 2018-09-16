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
    .param p2, "looper"    # Landroid/os/Looper;

    .line 3380
    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    .line 3381
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 3382
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 3392
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3393
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    new-instance v1, Lcom/oneplus/display/SDManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;

    .line 3395
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    .line 3499
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

    .line 3496
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    .line 3497
    goto/16 :goto_0

    .line 3490
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->Night2ReadMode()V

    .line 3491
    goto/16 :goto_0

    .line 3493
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->Read2NightMode()V

    .line 3494
    goto/16 :goto_0

    .line 3448
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4100(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    .line 3449
    goto/16 :goto_0

    .line 3486
    :pswitch_5
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_1

    move v1, v2

    nop

    :cond_1
    move v0, v1

    .line 3487
    .local v0, "activated":Z
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->NightModeActivated(Z)V

    .line 3488
    goto/16 :goto_0

    .line 3482
    .end local v0    # "activated":Z
    :pswitch_6
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_2

    move v1, v2

    nop

    :cond_2
    move v0, v1

    .line 3483
    .restart local v0    # "activated":Z
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ReadModeActivated(Z)V

    .line 3484
    goto/16 :goto_0

    .line 3479
    .end local v0    # "activated":Z
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 3480
    goto/16 :goto_0

    .line 3455
    :pswitch_8
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_5

    .line 3456
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    const/16 v2, 0x1194

    if-eq v0, v2, :cond_5

    .line 3457
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3458
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3459
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    goto/16 :goto_0

    .line 3464
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

    .line 3465
    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3464
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3466
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v0

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v1, :cond_5

    .line 3467
    const/4 v0, 0x0

    .line 3468
    .local v0, "delta":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    if-eqz v1, :cond_3

    .line 3469
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    .line 3470
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

    .line 3472
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4402(Lcom/android/server/oneplus/display/ColorBalanceService;I)I

    .line 3473
    const/16 v1, 0x1f4

    if-le v0, v1, :cond_4

    .line 3474
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 3476
    .end local v0    # "delta":I
    :cond_4
    goto/16 :goto_0

    .line 3417
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V

    .line 3418
    goto/16 :goto_0

    .line 3420
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;II)V

    .line 3421
    goto/16 :goto_0

    .line 3451
    :pswitch_c
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4202(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3452
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    .line 3453
    goto/16 :goto_0

    .line 3414
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

    .line 3415
    goto/16 :goto_0

    .line 3411
    :pswitch_e
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V

    .line 3412
    goto/16 :goto_0

    .line 3445
    :pswitch_f
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    .line 3446
    goto/16 :goto_0

    .line 3442
    :pswitch_10
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V

    .line 3443
    goto/16 :goto_0

    .line 3437
    :pswitch_11
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3438
    .local v0, "dmode":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3439
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3440
    goto :goto_0

    .line 3431
    .end local v0    # "dmode":I
    :pswitch_12
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 3432
    .local v0, "amode":I
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3433
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AMODE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    goto :goto_0

    .line 3426
    .end local v0    # "amode":I
    :pswitch_13
    const-string v0, "ColorBalanceService"

    const-string v1, "MSG_SAVE_MODE is not support"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    goto :goto_0

    .line 3423
    :pswitch_14
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V

    .line 3424
    goto :goto_0

    .line 3402
    :pswitch_15
    const-string v0, "ColorBalanceService"

    const-string v2, "MSG_SCREEN_OFF"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3403
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3408
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V

    .line 3409
    goto :goto_0

    .line 3397
    :pswitch_16
    const-string v0, "ColorBalanceService"

    const-string v1, "MSG_SCREEN_ON"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3398
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$2902(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 3399
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->this$0:Lcom/android/server/oneplus/display/ColorBalanceService;

    invoke-static {v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V

    .line 3400
    nop

    .line 3501
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
