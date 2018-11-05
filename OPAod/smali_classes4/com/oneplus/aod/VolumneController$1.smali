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
    .locals 6

    const-string v0, "switch_state"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v2, "VolumneController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_NONE:I

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v3, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v3}, Lcom/oneplus/aod/VolumneController;->access$100(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/aod/VolumneController;->access$002(Lcom/oneplus/aod/VolumneController;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x29

    const/4 v4, 0x1

    if-eqz v2, :cond_5

    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    if-ne v0, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    const v5, 0x7f0701e9

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_2
    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v0, v2, :cond_4

    new-array v2, v4, [I

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    const v2, 0x7f0701e6

    goto :goto_0

    :cond_3
    const v2, 0x7f0701e7

    :goto_0
    iget-object v5, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v5}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$000(Lcom/oneplus/aod/VolumneController;)Landroid/widget/ImageView;

    move-result-object v2

    const v5, 0x7f0701e8

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    iget-object v5, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v5}, Lcom/oneplus/aod/VolumneController;->access$300(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/oneplus/aod/VolumneController;->access$202(Lcom/oneplus/aod/VolumneController;Landroid/widget/TextView;)Landroid/widget/TextView;

    :cond_6
    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_a

    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_SILENCE:I

    if-ne v0, v2, :cond_7

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f100217

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_7
    sget v2, Lcom/oneplus/aod/VolumneController;->MODE_VIBRATE:I

    if-ne v0, v2, :cond_9

    iget-object v2, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v2}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v2

    new-array v4, v4, [I

    aput v3, v4, v1

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_8

    const v1, 0x7f100218

    goto :goto_2

    :cond_8
    const v1, 0x7f100215

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    :cond_9
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$200(Lcom/oneplus/aod/VolumneController;)Landroid/widget/TextView;

    move-result-object v1

    const v2, 0x7f100216

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    :cond_a
    :goto_3
    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1, v0}, Lcom/oneplus/aod/VolumneController;->access$402(Lcom/oneplus/aod/VolumneController;I)I

    iget-object v1, p0, Lcom/oneplus/aod/VolumneController$1;->this$0:Lcom/oneplus/aod/VolumneController;

    invoke-static {v1}, Lcom/oneplus/aod/VolumneController;->access$500(Lcom/oneplus/aod/VolumneController;)Lcom/oneplus/aod/AodUpdateMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/aod/AodUpdateMonitor;->onZenModeChange(I)V

    return-void
.end method
