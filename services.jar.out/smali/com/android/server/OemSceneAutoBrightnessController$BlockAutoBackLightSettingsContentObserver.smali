.class public Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneAutoBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneAutoBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BlockAutoBackLightSettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneAutoBrightnessController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneAutoBrightnessController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    invoke-static {}, Lcom/android/server/OemSceneAutoBrightnessController;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAutoBrightnessController"

    const-string v1, "[scene] Block auto backlight Settings changed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    iget-object v1, p0, Lcom/android/server/OemSceneAutoBrightnessController$BlockAutoBackLightSettingsContentObserver;->this$0:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-static {v1}, Lcom/android/server/OemSceneAutoBrightnessController;->access$100(Lcom/android/server/OemSceneAutoBrightnessController;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    return-void
.end method
