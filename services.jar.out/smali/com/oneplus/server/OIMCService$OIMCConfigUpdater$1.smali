.class Lcom/oneplus/server/OIMCService$OIMCConfigUpdater$1;
.super Ljava/lang/Object;
.source "OIMCService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;->updateConfig(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;

.field final synthetic val$configJSONArray:Lorg/json/JSONArray;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;Lorg/json/JSONArray;)V
    .locals 0
    .param p1, "this$1"    # Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;

    .line 244
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater$1;->this$1:Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;

    iput-object p2, p0, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater$1;->val$configJSONArray:Lorg/json/JSONArray;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 247
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater$1;->this$1:Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mTM:Lcom/oneplus/server/TriggerManager;

    iget-object v1, p0, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater$1;->val$configJSONArray:Lorg/json/JSONArray;

    invoke-virtual {v0, v1}, Lcom/oneplus/server/TriggerManager;->parseOnlineConfig(Lorg/json/JSONArray;)V

    .line 248
    return-void
.end method
