.class Lcom/android/server/policy/OemPhoneWindowManager$3;
.super Landroid/os/Handler;
.source "OemPhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemPhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemPhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemPhoneWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/OemPhoneWindowManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 544
    iput-object p1, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .line 547
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    .line 549
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, v0, Lcom/android/server/policy/OemPhoneWindowManager;->mPowerKeyLongPressHandled:Z

    .line 550
    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$300(Lcom/android/server/policy/OemPhoneWindowManager;)[B

    move-result-object v0

    const/16 v1, 0x80

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->access$300(Lcom/android/server/policy/OemPhoneWindowManager;)[B

    move-result-object v0

    goto :goto_1

    .line 551
    :cond_1
    new-array v0, v1, [B

    .line 552
    .local v0, "buff":[B
    :goto_1
    if-eqz v0, :cond_6

    .line 553
    const/16 v3, 0x4d

    aget-byte v4, v0, v3

    .line 554
    .local v4, "powerKeyPressCounter":I
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-eqz v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v2, -0x1

    :goto_2
    add-int/2addr v4, v2

    .line 555
    const-string v2, "OemPhoneWindowManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RECORD POWER KEY "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    if-ltz v4, :cond_3

    if-ge v4, v1, :cond_3

    .line 557
    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    int-to-byte v2, v4

    invoke-static {v1, v3, v2}, Lcom/android/server/policy/OemPhoneWindowManager;->access$400(Lcom/android/server/policy/OemPhoneWindowManager;IB)Z

    .line 559
    .end local v4    # "powerKeyPressCounter":I
    :cond_3
    goto :goto_5

    .line 565
    .end local v0    # "buff":[B
    :pswitch_1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mPortraitRotation:I

    if-eq v0, v1, :cond_5

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/policy/OemPhoneWindowManager$3;->this$0:Lcom/android/server/policy/OemPhoneWindowManager;

    iget v1, v1, Lcom/android/server/policy/OemPhoneWindowManager;->mUpsideDownRotation:I

    if-ne v0, v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v0, "0"

    goto :goto_4

    :cond_5
    :goto_3
    const-string v0, "1"

    .line 566
    .local v0, "enabled":Ljava/lang/String;
    :goto_4
    new-instance v1, Ljava/io/FileOutputStream;

    const-string v2, "/proc/touchpanel/tpedge_limit_enable"

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 567
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 568
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    .end local v0    # "enabled":Ljava/lang/String;
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    goto :goto_5

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "OemPhoneWindowManager"

    const-string v2, "Could not write to file /proc/touchpanel/tpedge_limit_enable"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 576
    .end local v0    # "e":Ljava/io/IOException;
    :cond_6
    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
