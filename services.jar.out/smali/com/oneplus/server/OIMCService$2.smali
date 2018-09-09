.class Lcom/oneplus/server/OIMCService$2;
.super Ljava/lang/Object;
.source "OIMCService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCService;->forceUpdateOnlineConfigImmediately()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCService;

    .line 166
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$2;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 169
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService$2;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-static {v1}, Lcom/oneplus/server/OIMCService;->access$000(Lcom/oneplus/server/OIMCService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "OIMC"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 170
    .local v0, "configGrabber":Lcom/oneplus/config/ConfigGrabber;
    iget-object v1, p0, Lcom/oneplus/server/OIMCService$2;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v1, v1, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/server/TriggerManager;->parseOnlineConfig(Lorg/json/JSONArray;)V

    .line 171
    return-void
.end method
