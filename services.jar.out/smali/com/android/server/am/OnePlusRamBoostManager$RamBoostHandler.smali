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

    iput-object p1, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusRamBoostManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/32 v1, 0x5265c00

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)I

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pkgName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$1000(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;)I

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "codePath"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v4, v1, v2, v3}, Lcom/android/server/am/OnePlusRamBoostManager;->access$900(Lcom/android/server/am/OnePlusRamBoostManager;ILjava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$700(Lcom/android/server/am/OnePlusRamBoostManager;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$800(Lcom/android/server/am/OnePlusRamBoostManager;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$600(Lcom/android/server/am/OnePlusRamBoostManager;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    goto :goto_0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$500(Lcom/android/server/am/OnePlusRamBoostManager;I)Z

    goto :goto_0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string/jumbo v2, "pkgName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "hotCount"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v4, v2, v3, v1}, Lcom/android/server/am/OnePlusRamBoostManager;->access$400(Lcom/android/server/am/OnePlusRamBoostManager;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$100(Lcom/android/server/am/OnePlusRamBoostManager;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$200(Lcom/android/server/am/OnePlusRamBoostManager;)I

    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0, v1, v2}, Lcom/android/server/am/OnePlusRamBoostManager;->access$300(Lcom/android/server/am/OnePlusRamBoostManager;J)V

    goto :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/am/OnePlusRamBoostManager$RamBoostHandler;->this$0:Lcom/android/server/am/OnePlusRamBoostManager;

    invoke-static {v0}, Lcom/android/server/am/OnePlusRamBoostManager;->access$100(Lcom/android/server/am/OnePlusRamBoostManager;)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
