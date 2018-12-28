.class Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;
.super Landroid/os/AsyncTask;
.source "AppDataUsage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/AppDataUsage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateRuleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_MOBILE:I = 0x0

.field public static final TYPE_WLAN:I = 0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

.field private state:Z

.field final synthetic this$0:Lcom/android/settings/datausage/AppDataUsage;

.field private type:I

.field private uid:I


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/AppDataUsage;Landroid/content/Context;IZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p2, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    iput p3, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->uid:I

    iput-boolean p4, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    iput p5, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->type:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 8

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->uid:I

    invoke-static {v0, v1}, Lcom/android/settings/datausage/OPDataUsageUtils;->getApplicationInfoByUid(Landroid/content/Context;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->type:I

    const/4 v4, 0x0

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    new-instance v5, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v4, v7}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v4, v5

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v5}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    goto :goto_1

    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    new-instance v5, Lcom/oneplus/settings/utils/OPFirewallRule;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v5, v6, v7, v4}, Lcom/oneplus/settings/utils/OPFirewallRule;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    move-object v4, v5

    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-virtual {v5}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/oneplus/settings/utils/OPFirewallUtils;->addOrUpdateRole(Landroid/content/Context;Lcom/oneplus/settings/utils/OPFirewallRule;)V

    :goto_1
    goto :goto_0

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    iget v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$1000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->this$0:Lcom/android/settings/datausage/AppDataUsage;

    invoke-static {v0}, Lcom/android/settings/datausage/AppDataUsage;->access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->state:Z

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :goto_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    invoke-virtual {v0}, Lcom/oneplus/settings/ui/OPProgressDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    new-instance v0, Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->mContext:Landroid/content/Context;

    const v2, 0x7f12100e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    new-instance v1, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask$1;-><init>(Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3, v1}, Lcom/oneplus/settings/ui/OPProgressDialog;->setTimeOut(JLcom/oneplus/settings/ui/OPProgressDialog$OnTimeOutListener;)V

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage$UpdateRuleTask;->progressDialog:Lcom/oneplus/settings/ui/OPProgressDialog;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/settings/ui/OPProgressDialog;->showDelay(J)V

    return-void
.end method
