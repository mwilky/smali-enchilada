.class final Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;
.super Landroid/os/Handler;
.source "OPThreekeyNavigationDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyNavigationDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1500(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1600(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$500(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Landroid/widget/LinearLayout;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1102(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Z)Z

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1700(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$200(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1800(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1400(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Z)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1100(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1300(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1100(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    invoke-static {v0}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1200(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$1000(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;I)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$900(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V

    goto :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyNavigationDialog$H;->this$0:Lcom/android/systemui/volume/OPThreekeyNavigationDialog;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyNavigationDialog;->access$800(Lcom/android/systemui/volume/OPThreekeyNavigationDialog;Landroid/view/View;)V

    nop

    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
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
