.class Lcom/oneplus/settings/ui/OPTimerDialog$2;
.super Landroid/os/Handler;
.source "OPTimerDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPTimerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPTimerDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPTimerDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const-wide/16 v1, 0x3e8

    const/4 v3, 0x1

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$100(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$110(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v3}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$100(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v5

    invoke-virtual {v4, v0, v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v0

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$200(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$400(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$410(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u5df2\u7ecf\u8fbe\u5230\u5b9a\u65f6\u5173\u673a\u65f6\u95f4,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v5}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$400(Lcom/oneplus/settings/ui/OPTimerDialog;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "s\u540e\u786e\u8ba4\u5173\u673a?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$300(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$600(Lcom/oneplus/settings/ui/OPTimerDialog;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTimerDialog$2;->this$0:Lcom/oneplus/settings/ui/OPTimerDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->access$500(Lcom/oneplus/settings/ui/OPTimerDialog;)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_6
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
