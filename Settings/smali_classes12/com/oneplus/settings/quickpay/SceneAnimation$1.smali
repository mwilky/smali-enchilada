.class Lcom/oneplus/settings/quickpay/SceneAnimation$1;
.super Landroid/os/Handler;
.source "SceneAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/SceneAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/SceneAnimation;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/quickpay/SceneAnimation;

    .line 21
    iput-object p1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 23
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 25
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v0}, Lcom/oneplus/settings/quickpay/SceneAnimation;->access$100(Lcom/oneplus/settings/quickpay/SceneAnimation;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/SceneAnimation;->access$000(Lcom/oneplus/settings/quickpay/SceneAnimation;)[I

    move-result-object v2

    aget v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 26
    goto :goto_0

    .line 29
    :pswitch_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 30
    .local v0, "pFrameNo":I
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/SceneAnimation;->access$100(Lcom/oneplus/settings/quickpay/SceneAnimation;)Landroid/widget/ImageView;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v3}, Lcom/oneplus/settings/quickpay/SceneAnimation;->access$000(Lcom/oneplus/settings/quickpay/SceneAnimation;)[I

    move-result-object v3

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 31
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/SceneAnimation;->access$200(Lcom/oneplus/settings/quickpay/SceneAnimation;)I

    move-result v2

    if-ne v0, v2, :cond_0

    .line 32
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    invoke-static {v2, v1}, Lcom/oneplus/settings/quickpay/SceneAnimation;->access$300(Lcom/oneplus/settings/quickpay/SceneAnimation;I)V

    goto :goto_0

    .line 34
    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/quickpay/SceneAnimation$1;->this$0:Lcom/oneplus/settings/quickpay/SceneAnimation;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/settings/quickpay/SceneAnimation;->access$300(Lcom/oneplus/settings/quickpay/SceneAnimation;I)V

    .line 35
    nop

    .line 40
    .end local v0    # "pFrameNo":I
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
