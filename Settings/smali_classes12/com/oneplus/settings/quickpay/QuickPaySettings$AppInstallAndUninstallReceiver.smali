.class Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "QuickPaySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/quickpay/QuickPaySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInstallAndUninstallReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const-string v2, "com.tencent.mm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "com.eg.android.AlipayGphone"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "net.one97.paytm"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/quickpay/QuickPaySettings$AppInstallAndUninstallReceiver;->this$0:Lcom/oneplus/settings/quickpay/QuickPaySettings;

    invoke-static {v2}, Lcom/oneplus/settings/quickpay/QuickPaySettings;->access$200(Lcom/oneplus/settings/quickpay/QuickPaySettings;)V

    :cond_3
    return-void
.end method
