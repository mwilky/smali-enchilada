.class Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    .line 670
    iput-object p1, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 673
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 674
    .local v0, "action":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 675
    return-void

    .line 677
    :cond_0
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    .line 678
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 679
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 680
    .local v1, "pkgName":Ljava/lang/String;
    const-string v2, "OPMultiAppListSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "has changed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    iget-object v2, p0, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings$9;->this$0:Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;->access$2202(Lcom/oneplus/settings/multiapp/OPMultiAppListSettings;Z)Z

    .line 684
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_2
    return-void
.end method
