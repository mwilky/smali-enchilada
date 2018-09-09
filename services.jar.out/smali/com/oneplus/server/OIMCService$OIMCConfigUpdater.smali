.class Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;
.super Ljava/lang/Object;
.source "OIMCService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OIMCConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OIMCService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/server/OIMCService;

    .line 241
    iput-object p1, p0, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;->this$0:Lcom/oneplus/server/OIMCService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 244
    iget-object v0, p0, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;->this$0:Lcom/oneplus/server/OIMCService;

    iget-object v0, v0, Lcom/oneplus/server/OIMCService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/server/OIMCService$OIMCConfigUpdater$1;-><init>(Lcom/oneplus/server/OIMCService$OIMCConfigUpdater;Lorg/json/JSONArray;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 250
    return-void
.end method
