.class Lcom/android/settings/RadioInfo$3;
.super Landroid/os/Handler;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2200(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "update error"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    const-string v2, "refresh error"

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    const-string v2, "Set preferred network type failed."

    invoke-static {v1, v2}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    const/4 v3, 0x0

    aget v2, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/RadioInfo$3;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {}, Lcom/android/settings/RadioInfo;->access$2000()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    sub-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/android/settings/RadioInfo;->access$1900(Lcom/android/settings/RadioInfo;I)V

    nop

    :cond_2
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
