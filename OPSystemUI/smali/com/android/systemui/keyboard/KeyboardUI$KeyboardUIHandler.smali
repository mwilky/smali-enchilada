.class final Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;
.super Landroid/os/Handler;
.source "KeyboardUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyboard/KeyboardUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeyboardUIHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyboard/KeyboardUI;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyboard/KeyboardUI;)V
    .locals 2

    .line 415
    iput-object p1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    .line 416
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 417
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 420
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 441
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/keyboard/BluetoothDialog;->dismiss()V

    goto :goto_0

    .line 422
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v0}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 424
    goto :goto_0

    .line 426
    :cond_0
    new-instance v0, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;

    iget-object v1, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogClickListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    .line 428
    .local v0, "clickListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v1, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;

    iget-object v3, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-direct {v1, v3, v2}, Lcom/android/systemui/keyboard/KeyboardUI$BluetoothDialogDismissListener;-><init>(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/KeyboardUI$1;)V

    .line 430
    .local v1, "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    new-instance v3, Lcom/android/systemui/keyboard/BluetoothDialog;

    iget-object v4, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    iget-object v4, v4, Lcom/android/systemui/keyboard/KeyboardUI;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/systemui/keyboard/BluetoothDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v2, v3}, Lcom/android/systemui/keyboard/KeyboardUI;->access$302(Lcom/android/systemui/keyboard/KeyboardUI;Lcom/android/systemui/keyboard/BluetoothDialog;)Lcom/android/systemui/keyboard/BluetoothDialog;

    .line 431
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const v3, 0x7f110258

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyboard/BluetoothDialog;->setTitle(I)V

    .line 432
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const v3, 0x7f110257

    invoke-virtual {v2, v3}, Lcom/android/systemui/keyboard/BluetoothDialog;->setMessage(I)V

    .line 433
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const v3, 0x7f110256

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/keyboard/BluetoothDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 435
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/keyboard/BluetoothDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 436
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/keyboard/BluetoothDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 437
    iget-object v2, p0, Lcom/android/systemui/keyboard/KeyboardUI$KeyboardUIHandler;->this$0:Lcom/android/systemui/keyboard/KeyboardUI;

    invoke-static {v2}, Lcom/android/systemui/keyboard/KeyboardUI;->access$300(Lcom/android/systemui/keyboard/KeyboardUI;)Lcom/android/systemui/keyboard/BluetoothDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/keyboard/BluetoothDialog;->show()V

    .line 438
    nop

    .line 447
    .end local v0    # "clickListener":Landroid/content/DialogInterface$OnClickListener;
    .end local v1    # "dismissListener":Landroid/content/DialogInterface$OnDismissListener;
    :cond_1
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
