.class Lcom/android/server/ConnectivityService$CaptivePortalConfigUpdater;
.super Ljava/lang/Object;
.source "ConnectivityService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CaptivePortalConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method constructor <init>(Lcom/android/server/ConnectivityService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/ConnectivityService;

    .line 6260
    iput-object p1, p0, Lcom/android/server/ConnectivityService$CaptivePortalConfigUpdater;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1
    .param p1, "configJSONArray"    # Lorg/json/JSONArray;

    .line 6263
    iget-object v0, p0, Lcom/android/server/ConnectivityService$CaptivePortalConfigUpdater;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0, p1}, Lcom/android/server/ConnectivityService;->access$5900(Lcom/android/server/ConnectivityService;Lorg/json/JSONArray;)V

    .line 6264
    return-void
.end method
