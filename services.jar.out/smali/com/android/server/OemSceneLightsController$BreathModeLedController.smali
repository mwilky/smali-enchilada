.class public Lcom/android/server/OemSceneLightsController$BreathModeLedController;
.super Ljava/lang/Object;
.source "OemSceneLightsController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneLightsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "BreathModeLedController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneLightsController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneLightsController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneLightsController$BreathModeLedController;->this$0:Lcom/android/server/OemSceneLightsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneLightsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneLightsController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] BreathModeLedController: config => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneLightsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneLightsController"

    const-string v1, "[scene] BreathModeLedController: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneLightsController$BreathModeLedController;->this$0:Lcom/android/server/OemSceneLightsController;

    invoke-static {v0}, Lcom/android/server/OemSceneLightsController;->access$000(Lcom/android/server/OemSceneLightsController;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    iget-object v0, p0, Lcom/android/server/OemSceneLightsController$BreathModeLedController;->this$0:Lcom/android/server/OemSceneLightsController;

    sget-object v1, Lcom/android/server/OemSceneLightsController$LightsMode;->BREATH_MODE:Lcom/android/server/OemSceneLightsController$LightsMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneLightsController$LightsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneLightsController;->access$100(Lcom/android/server/OemSceneLightsController;IZ)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneLightsController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneLightsController"

    const-string v1, "[scene] BreathModeLedController: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneLightsController$BreathModeLedController;->this$0:Lcom/android/server/OemSceneLightsController;

    sget-object v1, Lcom/android/server/OemSceneLightsController$LightsMode;->BREATH_MODE:Lcom/android/server/OemSceneLightsController$LightsMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneLightsController$LightsMode;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneLightsController;->access$100(Lcom/android/server/OemSceneLightsController;IZ)V

    return v2
.end method
