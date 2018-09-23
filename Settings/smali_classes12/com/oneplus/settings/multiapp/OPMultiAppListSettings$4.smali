.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;
.super Lcom/oneplus/lib/util/loading/LoadingHelper;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Lcom/oneplus/lib/util/loading/LoadingHelper;-><init>()V

    return-void
.end method


# virtual methods
.method protected hideProgree(Ljava/lang/Object;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :catch_0
    move-exception v0

    :goto_1
    return-void
.end method

.method protected showProgree()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const v2, 0x7f120b92

    invoke-virtual {v1, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$4;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$800(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/ProgressDialog;

    move-result-object v0

    return-object v0
.end method
