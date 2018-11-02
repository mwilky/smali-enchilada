.class Lcom/oneplus/settings/ui/OPProgressDialog$1;
.super Landroid/os/Handler;
.source "OPProgressDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ui/OPProgressDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPProgressDialog;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPProgressDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->access$000(Lcom/oneplus/settings/ui/OPProgressDialog;)Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->access$000(Lcom/oneplus/settings/ui/OPProgressDialog;)Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;->onTimeOut(Lcom/oneplus/settings/ui/OPProgressDialog;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPProgressDialog$1;->this$0:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->show()V

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
