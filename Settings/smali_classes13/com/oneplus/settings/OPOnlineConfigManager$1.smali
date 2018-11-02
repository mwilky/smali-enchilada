.class Lcom/oneplus/settings/OPOnlineConfigManager$1;
.super Landroid/os/Handler;
.source "OPOnlineConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/OPOnlineConfigManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/OPOnlineConfigManager;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/OPOnlineConfigManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "settings handleMessage...."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v1}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$100(Lcom/oneplus/settings/OPOnlineConfigManager;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v2}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$200(Lcom/oneplus/settings/OPOnlineConfigManager;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/OPOnlineConfigManager$1;->this$0:Lcom/oneplus/settings/OPOnlineConfigManager;

    invoke-static {v2, v1}, Lcom/oneplus/settings/OPOnlineConfigManager;->access$300(Lcom/oneplus/settings/OPOnlineConfigManager;Lorg/json/JSONArray;)V

    nop

    :goto_0
    return-void
.end method
