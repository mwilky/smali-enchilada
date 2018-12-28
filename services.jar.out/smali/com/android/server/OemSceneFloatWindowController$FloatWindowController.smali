.class public Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;
.super Ljava/lang/Object;
.source "OemSceneFloatWindowController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneFloatWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FloatWindowController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneFloatWindowController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneFloatWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneFloatWindowController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] FloatWindowController: config => "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v3, 0x1

    invoke-static {v1, v3}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "stop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    invoke-static {v1, v2}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    :cond_2
    :goto_0
    return v2
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneFloatWindowController"

    const-string v1, "[scene] FloatWindowController: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneFloatWindowController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneFloatWindowController"

    const-string v1, "[scene] FloatWindowController: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;->this$0:Lcom/android/server/OemSceneFloatWindowController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/OemSceneFloatWindowController;->access$000(Lcom/android/server/OemSceneFloatWindowController;Z)V

    return v1
.end method
