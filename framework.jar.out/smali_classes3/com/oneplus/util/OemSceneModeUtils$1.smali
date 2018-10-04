.class Lcom/oneplus/util/OemSceneModeUtils$1;
.super Landroid/os/Handler;
.source "OemSceneModeUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/util/OemSceneModeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "PKG"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v2, "CONFIG_NAME"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Lcom/oneplus/util/OemSceneModeUtils;->access$200(Ljava/lang/String;)V

    :cond_1
    goto :goto_0

    :pswitch_1
    invoke-static {v0}, Lcom/oneplus/util/OemSceneModeUtils;->access$100(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v2}, Lcom/oneplus/util/OemSceneModeUtils;->access$000(Ljava/lang/String;I)V

    nop

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
