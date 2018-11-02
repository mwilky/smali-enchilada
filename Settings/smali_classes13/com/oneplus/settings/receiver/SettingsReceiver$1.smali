.class Lcom/oneplus/settings/receiver/SettingsReceiver$1;
.super Ljava/lang/Object;
.source "SettingsReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/receiver/SettingsReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/receiver/SettingsReceiver;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->this$0:Lcom/oneplus/settings/receiver/SettingsReceiver;

    iput-object p2, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/16 v1, 0x3e7

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "com.google.android.gms"

    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/receiver/SettingsReceiver$1;->val$context:Landroid/content/Context;

    const-string v2, "com.oneplus.ifaaservice"

    invoke-static {v0, v2, v1}, Lcom/oneplus/settings/utils/OPUtils;->installMultiApp(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
