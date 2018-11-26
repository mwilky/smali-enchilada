.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;
.super Landroid/os/AsyncTask;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CreateManagedProfileTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;


# direct methods
.method private constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 10

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;

    move-result-object v0

    const-string v1, "no_add_user"

    sget-object v2, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;

    move-result-object v0

    const-string v2, "no_add_user"

    sget-object v3, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/os/UserManager;

    move-result-object v2

    aget-object v3, p1, v1

    const v4, 0x4000060

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/UserManager;->createProfileForUser(Ljava/lang/String;II)Landroid/content/pm/UserInfo;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1402(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Landroid/content/pm/UserInfo;)Landroid/content/pm/UserInfo;

    const-string v0, "OPMultiAppListSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Oneplus ManagedProfileOrUserInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.android.settings"

    const/4 v5, 0x1

    const/4 v6, 0x1

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$1400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/pm/UserInfo;

    move-result-object v2

    iget v7, v2, Landroid/content/pm/UserInfo;->id:I

    const/4 v8, 0x0

    new-instance v9, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;

    invoke-direct {v9, p0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask$1;-><init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;)V

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;-><init>(Landroid/content/Context;Ljava/lang/String;IZIZLcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask$Callback;)V

    invoke-virtual {v0}, Lcom/oneplus/settings/multiapp/OPDeleteNonRequiredAppsTask;->run()V

    const-string v2, "OPMultiAppListSettings"

    const-string v3, "onCreate----doInBackground-finish"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$2102(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v0}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$2000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OPMultiAppListSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$CreateManagedProfileTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method
