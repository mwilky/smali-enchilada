.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;
.super Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    .line 478
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    invoke-direct {p0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onError()V
    .locals 3

    .line 507
    const-string v0, "OPMultiAppListSettings"

    const-string v1, "Delete non required apps task failed."

    new-instance v2, Ljava/lang/Exception;

    invoke-direct {v2}, Ljava/lang/Exception;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    const-string v0, "OPMultiAppListSettings"

    const-string v1, "onCreate----createProfileForUser--onError"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$2000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    .line 511
    return-void
.end method

.method public onSuccess()V
    .locals 4

    .line 486
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    .line 487
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/lib/util/loading/LoadingHelper;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1600(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/lib/util/loading/LoadingHelper;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/util/loading/LoadingHelper;->finishShowProgress(Lcom/oneplus/lib/util/loading/LoadingHelper$FinishShowCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    :cond_0
    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OPMultiAppListSettings"

    const-string v2, "Provisioning failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 499
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v0, v0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "user_setup_complete"

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;->this$1:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;

    iget-object v3, v3, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;

    move-result-object v3

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 502
    return-void
.end method
