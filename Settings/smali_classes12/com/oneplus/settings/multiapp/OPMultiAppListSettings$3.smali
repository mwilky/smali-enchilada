.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;
.super Landroid/os/Handler;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 158
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 162
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/app/ProgressDialog;

    .line 168
    .local v0, "progressDialog":Landroid/app/ProgressDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 169
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120b96

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 171
    new-instance v1, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;

    invoke-direct {v1, v0}, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;-><init>(Landroid/app/Dialog;)V

    .line 172
    .local v1, "helper":Lcom/oneplus/lib/util/loading/DialogLoadingHelper;
    invoke-virtual {v1}, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;->beginShowProgress()V

    .line 174
    iget v2, p1, Landroid/os/Message;->arg1:I

    .line 175
    .local v2, "position":I
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/better/OPAppModel;

    .line 176
    .local v3, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v3}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Ljava/lang/String;Lcom/oneplus/settings/better/OPAppModel;)V

    .line 177
    new-instance v4, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;

    invoke-direct {v4, p0, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$3;I)V

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/util/loading/DialogLoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V

    .line 190
    return-void

    .line 164
    .end local v0    # "progressDialog":Landroid/app/ProgressDialog;
    .end local v1    # "helper":Lcom/oneplus/lib/util/loading/DialogLoadingHelper;
    .end local v2    # "position":I
    .end local v3    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :cond_1
    :goto_0
    return-void
.end method
