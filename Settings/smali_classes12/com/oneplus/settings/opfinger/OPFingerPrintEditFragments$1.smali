.class Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;
.super Landroid/os/Handler;
.source "OPFingerPrintEditFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 91
    iput-object p1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .line 96
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 97
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 139
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showDeleteDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 140
    goto/16 :goto_1

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/fingerprint/Fingerprint;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showWarnigDialog(Landroid/hardware/fingerprint/Fingerprint;)V

    .line 128
    goto/16 :goto_1

    .line 100
    :pswitch_2
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v2, 0x7f120ac3

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 103
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->finish()V

    .line 107
    goto :goto_1

    .line 136
    :pswitch_3
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->showRenameDialog()V

    .line 137
    goto :goto_1

    .line 130
    :pswitch_4
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    .line 131
    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const v2, 0x7f120ac4

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 133
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 134
    goto :goto_1

    .line 113
    :pswitch_5
    goto :goto_1

    .line 118
    :pswitch_6
    iget-object v0, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v0}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 119
    .local v0, "activity":Landroid/app/Activity;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 122
    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-virtual {v2}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120ac5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/ui/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 124
    iget-object v1, p0, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments$1;->this$0:Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;

    invoke-static {v1}, Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;->access$000(Lcom/oneplus/settings/opfinger/OPFingerPrintEditFragments;)Lcom/oneplus/settings/ui/OPProgressDialog;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->show()V

    .line 125
    goto :goto_1

    .line 120
    :cond_2
    :goto_0
    return-void

    .line 144
    .end local v0    # "activity":Landroid/app/Activity;
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
