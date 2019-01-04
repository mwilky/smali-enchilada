.class Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneWiFiBoostController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneWiFiBoostController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeNetWorkAccContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneWiFiBoostController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OemSceneWiFiBoostController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 5

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$300(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_network_acceleration"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$400(Lcom/android/server/am/OemSceneWiFiBoostController;I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$500(Lcom/android/server/am/OemSceneWiFiBoostController;)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$100()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OemSceneWiFiBoostController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "network_acceleration switch changed! userId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " |mCurrentUserId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-ne v0, p3, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OemSceneWiFiBoostController$GameModeNetWorkAccContentObserver;->this$0:Lcom/android/server/am/OemSceneWiFiBoostController;

    invoke-static {v1}, Lcom/android/server/am/OemSceneWiFiBoostController;->access$200(Lcom/android/server/am/OemSceneWiFiBoostController;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2
    return-void
.end method
