.class public Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;
.super Landroid/os/Handler;
.source "OnePlusRamBoostManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusRamBoostManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RamBoostHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusRamBoostManager;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusRamBoostManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/OnePlusRamBoostManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .line 326
    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    .line 327
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 331
    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusSmartBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x5265c00

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 385
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V

    goto/16 :goto_0

    .line 381
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 382
    goto/16 :goto_0

    .line 375
    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 376
    .local v0, "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 377
    .local v1, "pkgName":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1100(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;)I

    .line 378
    goto/16 :goto_0

    .line 367
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pkgName":Ljava/lang/String;
    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 368
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 369
    .local v1, "pid":I
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 370
    .local v2, "pkgName":Ljava/lang/String;
    const-string v3, "codePath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 371
    .local v3, "codePath":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1000(Lcom/android/server/am/OnePlusRamBoostManager;ILjava/lang/String;Ljava/lang/String;)I

    .line 372
    goto :goto_0

    .line 363
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "codePath":Ljava/lang/String;
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$800(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 364
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$900(Lcom/android/server/am/OnePlusRamBoostManager;Z)V

    .line 365
    goto :goto_0

    .line 360
    :pswitch_6
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$700(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 361
    goto :goto_0

    .line 357
    :pswitch_7
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    .line 358
    goto :goto_0

    .line 351
    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 352
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 353
    .restart local v1    # "pid":I
    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$600(Lcom/android/server/am/OnePlusRamBoostManager;I)Z

    .line 354
    goto :goto_0

    .line 343
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .line 344
    .restart local v0    # "b":Landroid/os/Bundle;
    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 345
    .restart local v1    # "pid":I
    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 346
    .restart local v2    # "pkgName":Ljava/lang/String;
    const-string/jumbo v3, "hotCount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 347
    .local v3, "hotCount":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$500(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)Z

    .line 348
    goto :goto_0

    .line 337
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v1    # "pid":I
    .end local v2    # "pkgName":Ljava/lang/String;
    .end local v3    # "hotCount":Ljava/lang/String;
    :pswitch_a
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 339
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;)I

    .line 340
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$400(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    .line 341
    goto :goto_0

    .line 334
    :pswitch_b
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)V

    .line 335
    nop

    .line 389
    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
