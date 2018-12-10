.class final Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;
.super Landroid/os/Handler;
.source "OPThreekeyDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/volume/OPThreekeyDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "H"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/OPThreekeyDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

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

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$300(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    invoke-virtual {v0}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->rescheduleTimeoutH()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$200(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/volume/OPThreekeyDialogImpl$H;->this$0:Lcom/android/systemui/volume/OPThreekeyDialogImpl;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/systemui/volume/OPThreekeyDialogImpl;->access$100(Lcom/android/systemui/volume/OPThreekeyDialogImpl;I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
