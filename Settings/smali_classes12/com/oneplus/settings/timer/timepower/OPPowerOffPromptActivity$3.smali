.class Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;
.super Landroid/os/Handler;
.source "OPPowerOffPromptActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v0}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPTimerDialog;->getNButton()Landroid/widget/Button;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v1}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPTimerDialog;->getPButton()Landroid/widget/Button;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_7

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x1

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$410(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v5}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v5

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v6}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$400(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/oneplus/settings/ui/OPTimerDialog;->getTimeText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v2

    const/4 v5, 0x2

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_1

    :cond_1
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Landroid/widget/Button;->performClick()Z

    goto/16 :goto_1

    :cond_2
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    :pswitch_1
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v2

    if-lez v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$610(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$000(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Lcom/oneplus/settings/ui/OPTimerDialog;

    move-result-object v2

    iget-object v6, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-virtual {v6}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120cca

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-array v7, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v9}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$600(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/oneplus/settings/ui/OPTimerDialog;->setMessage(Ljava/lang/String;)V

    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$500(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v5, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$700(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v1}, Landroid/widget/Button;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$800(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_5

    const-string v3, "OPPowerOffPromptActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cancel auto shutdown while phone state is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v3}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$200(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)V

    goto :goto_0

    :cond_5
    const-string v3, "OPPowerOffPromptActivity"

    const-string v4, "Perform auto shutdown"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Landroid/widget/Button;->performClick()Z

    :goto_0
    goto :goto_1

    :cond_6
    invoke-virtual {v1, v5}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    :cond_7
    iget-object v2, p0, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity$3;->this$0:Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;

    invoke-static {v2}, Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;->access$300(Lcom/oneplus/settings/timer/timepower/OPPowerOffPromptActivity;)Z

    move-result v2

    :cond_8
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
