.class Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;
.super Landroid/os/Handler;
.source "OnePlusAppBootManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAppBootManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppBootProcessHander"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusAppBootManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusAppBootManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2422
    iput-object p1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    .line 2423
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2424
    return-void
.end method

.method private handlePkgMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 2465
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePkgMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2466
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2478
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2400(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2479
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePkgMessage # install "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2473
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2500(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)V

    .line 2474
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePkgMessage # remove "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_0

    .line 2468
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2400(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)Lcom/android/server/am/OnePlusAppBootManager$OnePlusAppBootInfo;

    .line 2469
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePkgMessage # reinstall "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2485
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .line 2427
    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage # msg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    .line 2429
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 2459
    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->handlePkgMessage(Landroid/os/Message;)V

    goto/16 :goto_1

    .line 2455
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->access$2200(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2456
    goto :goto_1

    .line 2450
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->access$2200(Lcom/android/server/am/OnePlusAppBootManager;)V

    .line 2451
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    const-wide/32 v1, 0x5265c00

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$2300(Lcom/android/server/am/OnePlusAppBootManager;J)V

    .line 2452
    goto :goto_1

    .line 2446
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$2100(Lcom/android/server/am/OnePlusAppBootManager;Z)V

    .line 2447
    goto :goto_1

    .line 2441
    :pswitch_3
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1800(Lcom/android/server/am/OnePlusAppBootManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$1900()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2442
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusAppBootManager;->access$2000(Lcom/android/server/am/OnePlusAppBootManager;Lorg/json/JSONArray;)V

    .line 2443
    goto :goto_1

    .line 2435
    .end local v0    # "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->access$1700(Lcom/android/server/am/OnePlusAppBootManager;Ljava/lang/String;)I

    move-result v0

    .line 2436
    .local v0, "ret":I
    sget-boolean v1, Lcom/android/server/am/OnePlusAppBootManager;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 2437
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceStopPkg # ret="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusAppBootManager;->myLog(Ljava/lang/String;)V

    goto :goto_1

    .line 2431
    .end local v0    # "ret":I
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusAppBootManager$AppBootProcessHander;->this$0:Lcom/android/server/am/OnePlusAppBootManager;

    invoke-static {}, Lcom/android/server/am/OnePlusAppBootManager;->access$1600()Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->writeXml_appboot(Ljava/util/HashMap;)I

    .line 2432
    nop

    .line 2462
    :cond_2
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1f
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
