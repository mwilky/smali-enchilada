.class Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;
.super Ljava/lang/Object;
.source "OemSceneWiFiBoostController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneWiFiBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WifiBoostConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$WifiBoostConfigUpdater;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$000(Lcom/android/server/am/OemSceneWiFiBoostController;Lorg/json/JSONArray;)V

    return-void
.end method
