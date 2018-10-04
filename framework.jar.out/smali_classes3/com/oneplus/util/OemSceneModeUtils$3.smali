.class Lcom/oneplus/util/OemSceneModeUtils$3;
.super Ljava/lang/Object;
.source "OemSceneModeUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/util/OemSceneModeUtils;->popNotify(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;

.field final synthetic val$pkgName:Ljava/lang/String;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Landroid/content/Intent;Landroid/content/Context;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$intent:Landroid/content/Intent;

    iput-object p2, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$context:Landroid/content/Context;

    iput p3, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$userId:I

    iput-object p4, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeUtils"

    const-string v1, " view clicked"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$intent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget v3, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$userId:I

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->access$400()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->access$400()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->access$400()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$userId:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "PKG"

    iget-object v3, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/util/OemSceneModeUtils;->access$400()Landroid/os/Handler;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_1
    iget-object v0, p0, Lcom/oneplus/util/OemSceneModeUtils$3;->val$pkgName:Ljava/lang/String;

    invoke-static {v0}, Lcom/oneplus/util/OemSceneModeUtils;->access$100(Ljava/lang/String;)V

    return-void
.end method
