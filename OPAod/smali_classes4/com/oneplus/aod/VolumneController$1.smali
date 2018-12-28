.class Lcom/oneplus/aod/VolumneController$1;
.super Landroid/content/BroadcastReceiver;
.source "VolumneController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/VolumneController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/VolumneController;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/VolumneController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string v0, "switch_state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "VolumneController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v1, Lcom/oneplus/aod/VolumneController;->MODE_NONE:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$100(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/aod/VolumneController;->access$002(Lcom/oneplus/aod/VolumneController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v1, :cond_4

    sget v1, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f070204

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    sget v1, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f070201

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v1

    const v2, 0x7f070203

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_4
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$300(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/aod/VolumneController;->access$202(Lcom/oneplus/aod/VolumneController;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_5
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_8

    sget v1, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    if-ne v0, v1, :cond_6

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f100217

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_6
    sget v1, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v0, v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f100218

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f100216

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_8
    :goto_1
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1, v0}, Lcom/oneplus/aod/VolumneController;->access$402(Lcom/oneplus/aod/VolumneController;I)I

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$500(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->onZenModeChange(I)V

    return-void
.end method
