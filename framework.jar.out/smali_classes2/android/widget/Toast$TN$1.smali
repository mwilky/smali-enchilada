.class Landroid/widget/Toast$TN$1;
.super Landroid/os/Handler;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/Toast$TN;-><init>(Ljava/lang/String;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/Toast$TN;


# direct methods
.method constructor <init>(Landroid/widget/Toast$TN;Landroid/os/Looper;Landroid/os/Handler$Callback;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-direct {p0, p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    :try_start_0
    invoke-static {}, Landroid/widget/Toast;->access$100()Landroid/app/INotificationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iget-object v1, v1, Landroid/widget/Toast$TN;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-interface {v0, v1, v2}, Landroid/app/INotificationManager;->cancelToast(Ljava/lang/String;Landroid/app/ITransientNotification;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v0}, Landroid/widget/Toast$TN;->handleHide()V

    iget-object v0, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    iput-object v1, v0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    goto :goto_0

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    iget-object v1, p0, Landroid/widget/Toast$TN$1;->this$0:Landroid/widget/Toast$TN;

    invoke-virtual {v1, v0}, Landroid/widget/Toast$TN;->handleShow(Landroid/os/IBinder;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
