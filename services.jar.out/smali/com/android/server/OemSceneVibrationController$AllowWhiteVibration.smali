.class public Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;
.super Ljava/lang/Object;
.source "OemSceneVibrationController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneVibrationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AllowWhiteVibration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneVibrationController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneVibrationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/android/server/OemSceneVibrationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneVibrationController"

    const-string v1, "[scene] AllowWhiteVibration: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-lt v1, v2, :cond_1

    const-string v1, "add_pkg"

    aget-object v2, v0, v3

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "breath"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/android/server/OemSceneVibrationController;

    invoke-static {v1}, Lcom/android/server/OemSceneVibrationController;->access$100(Lcom/android/server/OemSceneVibrationController;)Ljava/util/ArrayList;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return v3
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneVibrationController"

    const-string v1, "[scene] AllowWhiteVibration: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/android/server/OemSceneVibrationController;

    sget-object v1, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_WHITE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneVibrationController;->access$000(Lcom/android/server/OemSceneVibrationController;IZ)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneVibrationController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneVibrationController"

    const-string v1, "[scene] AllowWhiteVibration: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;->this$0:Lcom/android/server/OemSceneVibrationController;

    sget-object v1, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ALLOW_WHITE:Lcom/android/server/OemSceneVibrationController$VibrationMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneVibrationController$VibrationMode;->ordinal()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/OemSceneVibrationController;->access$000(Lcom/android/server/OemSceneVibrationController;IZ)V

    return v2
.end method
