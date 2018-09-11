.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;
.super Landroid/os/Handler;
.source "OPMultiAppListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;
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

    .line 124
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 127
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x58

    if-ne v0, v1, :cond_0

    .line 128
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 129
    .local v0, "position":I
    iget-object v1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v1}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->getSelected(I)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 130
    .local v1, "isSelected":Z
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$300(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/better/OPAppModel;

    .line 131
    .local v2, "model":Lcom/oneplus/settings/better/OPAppModel;
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$000(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/oneplus/settings/multiapp/OPMultiAppAdapter;->setSelected(IZ)V

    .line 132
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$400(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/app/AppOpsManager;

    move-result-object v3

    const/16 v4, 0x45

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getUid()I

    move-result v5

    invoke-virtual {v2}, Lcom/oneplus/settings/better/OPAppModel;->getPkgName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    .line 134
    iget-object v3, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-static {v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$500(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$2;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-virtual {v4, v2}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->getEnabledString(Lcom/oneplus/settings/better/OPAppModel;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 142
    .end local v0    # "position":I
    .end local v1    # "isSelected":Z
    .end local v2    # "model":Lcom/oneplus/settings/better/OPAppModel;
    :cond_0
    return-void
.end method
